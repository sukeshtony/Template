"""
generate_all_sql.py
-------------------
Generates standalone SQL INSERT files for all 4 modules:
  1. audio_postcard   -> audio_postcard_insert.sql
  2. story_building   -> story_building_insert.sql
  3. short_presentation -> short_presentation_insert.sql
  4. rapid_questions   -> rapid_questions_insert.sql

Each file can be pasted directly into pgAdmin / psql and executed.
Uses DO $$ ... END $$ blocks with variables to capture lesson_id from RETURNING.
"""

import json
import os
import importlib.util

BASE_DIR = os.path.dirname(os.path.abspath(__file__))


def load_module(name, path):
    """Load a Python module from a file path without polluting sys.modules."""
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


# ── helpers ──────────────────────────────────────────────────────────────────

def sql_escape(text):
    """Escape single quotes for SQL string literals."""
    if text is None:
        return "NULL"
    return str(text).replace("'", "''")

def sql_str(text):
    """Wrap text in single quotes after escaping."""
    if text is None:
        return "NULL"
    return f"'{sql_escape(text)}'"


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║  1. AUDIO POSTCARD                                                      ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def generate_audio_postcard_sql():
    mod = load_module("ap_data", os.path.join(BASE_DIR, "audio_postcard", "data.py"))
    postcards_data = mod.postcards_data

    EXAMPLE_TOPIC = "Visiting a new college campus"
    EXAMPLE_INSTRUCTION = (
        "Describe the campus layout, interesting facilities, "
        "and your feelings about the environment."
    )
    EXAMPLE_CONTENT = (
        "Hello! I recently visited a college campus that left a "
        "strong impression on me. The sprawling green quads, modern "
        "labs, and historic libraries created a unique blend of "
        "tradition and innovation. I felt inspired and excited about "
        "the possibility of studying there, and I can''t wait to "
        "share more details with you!"
    )

    lines = []
    lines.append("-- =====================================================")
    lines.append("-- AUDIO POSTCARD (Personal Expression) — 360 lessons")
    lines.append("-- Run this entire script in a single pgAdmin query window")
    lines.append("-- =====================================================")
    lines.append("")

    for idx, lesson in enumerate(postcards_data, 1):
        lesson_name = sql_escape(lesson["lesson_name"])
        grade = lesson["grade"]
        difficulty = lesson["difficulty"]
        topic = sql_escape(lesson["topic"])
        instructions = sql_escape(lesson["instructions"])
        desc = sql_escape(f"Audio Postcard for {grade}th grade")

        # Build JSON
        lesson_json = json.dumps({
            "lesson_name": lesson["lesson_name"],
            "lesson_description": f"Audio Postcard for {grade}th grade",
            "training_module_id": "e39352c6-f890-464f-be63-557fe374362a",
            "grade": grade,
            "section": None,
            "difficulty_level": difficulty,
            "lesson_type": "Personal Expression",
            "contents": [
                {"content_key": "topic", "content_value": lesson["topic"]},
                {"content_key": "instructions", "content_value": lesson["instructions"]},
                {"content_key": "example_topic", "content_value": EXAMPLE_TOPIC},
                {"content_key": "example_instruction", "content_value": EXAMPLE_INSTRUCTION.replace("''", "'")},
                {"content_key": "example_content", "content_value": EXAMPLE_CONTENT.replace("''", "'")}
            ]
        })
        lesson_json_escaped = sql_escape(lesson_json)

        lines.append(f"-- Lesson {idx}: {lesson['lesson_name']}")
        lines.append("DO $$")
        lines.append("DECLARE v_lesson_id UUID;")
        lines.append("BEGIN")
        lines.append("  INSERT INTO bantrly.lesson (")
        lines.append("    lesson_id, lesson_name, lesson_description, training_module_id,")
        lines.append("    difficulty_level, lesson_type, created_on, created_by,")
        lines.append("    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), '{lesson_name}', '{desc}',")
        lines.append(f"    'e39352c6-f890-464f-be63-557fe374362a', '{difficulty}',")
        lines.append(f"    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',")
        lines.append(f"    'SUPER_ADMIN', false, false, {grade}, NULL, NULL")
        lines.append("  ) RETURNING lesson_id INTO v_lesson_id;")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'topic', '{topic}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'instructions', '{instructions}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_topic', '{sql_escape(EXAMPLE_TOPIC)}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_instruction', '{sql_escape(EXAMPLE_INSTRUCTION)}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_content', '{EXAMPLE_CONTENT}', NOW(), NOW());")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_version_new (")
        lines.append("    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), v_lesson_id, 1, '{lesson_name}',")
        lines.append(f"    '{lesson_json_escaped}',")
        lines.append(f"    'published', true, NOW()")
        lines.append("  );")
        lines.append("END $$;")
        lines.append("")

    return "\n".join(lines)


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║  2. STORY BUILDING                                                      ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def generate_story_building_sql():
    mod = load_module("sb_data", os.path.join(BASE_DIR, "story_building", "data.py"))
    stories_data = mod.stories_data

    EXAMPLE_QUESTION = "forest, lantern, path, courage, adventure"
    EXAMPLE_CONTENT = (
        "In a quiet forest, a child discovered a glowing lantern "
        "lying on the path. Holding it high, they found the courage "
        "to walk deeper into the woods. Every step revealed hidden "
        "wonders, and the adventure showed that bravery lights the "
        "way forward."
    )

    lines = []
    lines.append("-- =====================================================")
    lines.append("-- STORY BUILDING (Story Building with Keywords) — 360 lessons")
    lines.append("-- Run this entire script in a single pgAdmin query window")
    lines.append("-- =====================================================")
    lines.append("")

    for idx, lesson in enumerate(stories_data, 1):
        lesson_name = sql_escape(lesson["lesson_name"])
        grade = lesson["grade"]
        difficulty = lesson["difficulty"]
        keywords = sql_escape(lesson["keywords"])

        lesson_json = json.dumps({
            "lesson_name": lesson["lesson_name"],
            "lesson_description": "Build a Story With Keywords for the user",
            "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b",
            "class_name": str(grade),
            "difficulty_level": difficulty,
            "lesson_type": "Story Building with Keywords",
            "contents": [
                {"content_key": "example_question", "content_value": EXAMPLE_QUESTION},
                {"content_key": "example_content", "content_value": EXAMPLE_CONTENT},
                {"content_key": "keywords", "content_value": lesson["keywords"]}
            ]
        })
        lesson_json_escaped = sql_escape(lesson_json)

        lines.append(f"-- Lesson {idx}: {lesson['lesson_name']}")
        lines.append("DO $$")
        lines.append("DECLARE v_lesson_id UUID;")
        lines.append("BEGIN")
        lines.append("  INSERT INTO bantrly.lesson (")
        lines.append("    lesson_id, lesson_name, lesson_description, training_module_id,")
        lines.append("    difficulty_level, lesson_type, created_on, created_by,")
        lines.append("    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), '{lesson_name}', 'Build a Story With Keywords for the user',")
        lines.append(f"    'ccff362e-8ca9-4b2c-ad37-faba8542543b', '{difficulty}',")
        lines.append(f"    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',")
        lines.append(f"    'SUPER_ADMIN', false, false, {grade}, NULL, NULL")
        lines.append("  ) RETURNING lesson_id INTO v_lesson_id;")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_question', '{sql_escape(EXAMPLE_QUESTION)}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_content', '{sql_escape(EXAMPLE_CONTENT)}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'keywords', '{keywords}', NOW(), NOW());")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_version_new (")
        lines.append("    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), v_lesson_id, 1, '{lesson_name}',")
        lines.append(f"    '{lesson_json_escaped}',")
        lines.append(f"    'published', true, NOW()")
        lines.append("  );")
        lines.append("END $$;")
        lines.append("")

    return "\n".join(lines)


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║  3. SHORT PRESENTATION                                                  ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def generate_short_presentation_sql():
    mod = load_module("sp_data", os.path.join(BASE_DIR, "short_presentation", "data.py"))
    presentations_data = mod.presentations_data

    EXAMPLE_HEADING = (
        "Say what reading is. List 2–3 benefits of reading regularly. "
        "Explain how it helps your mind and creativity. "
        "End with a strong call-to-action!"
    )
    EXAMPLE_CONTENT = (
        "Reading is when you explore stories or learn new things through books. "
        "It can help you relax, spark your imagination, and improve your vocabulary. "
        "Plus, it''s a great way to travel to new worlds without leaving home. "
        "So grab a book today and start your next adventure!"
    )

    lines = []
    lines.append("-- =====================================================")
    lines.append(f"-- SHORT PRESENTATION (Presentation Skill) — {len(presentations_data)} lessons")
    lines.append("-- Run this entire script in a single pgAdmin query window")
    lines.append("-- =====================================================")
    lines.append("")

    for idx, lesson in enumerate(presentations_data, 1):
        lesson_name = sql_escape(lesson["lesson_name"])
        grade = lesson["grade"]
        difficulty = lesson["difficulty"]
        topic_overview = sql_escape(lesson["topic_overview"])
        guidelines = sql_escape(".".join(lesson["preparation_guidelines"]))
        desc = sql_escape(f"Short Presentation Skills for Grade {grade}")

        lesson_json = json.dumps({
            "lesson_name": lesson["lesson_name"],
            "lesson_description": f"Short Presentation Skills for Grade {grade}",
            "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72",
            "grade": grade,
            "section": None,
            "difficulty_level": difficulty,
            "lesson_type": "Presentation Skill",
            "contents": [
                {"content_key": "topic_overview", "content_value": lesson["topic_overview"]},
                {"content_key": "preparation_guidelines", "content_value": ".".join(lesson["preparation_guidelines"])},
                {"content_key": "example_heading", "content_value": EXAMPLE_HEADING},
                {"content_key": "example_content", "content_value": EXAMPLE_CONTENT.replace("''", "'")}
            ]
        })
        lesson_json_escaped = sql_escape(lesson_json)

        lines.append(f"-- Lesson {idx}: {lesson['lesson_name']}")
        lines.append("DO $$")
        lines.append("DECLARE v_lesson_id UUID;")
        lines.append("BEGIN")
        lines.append("  INSERT INTO bantrly.lesson (")
        lines.append("    lesson_id, lesson_name, lesson_description, training_module_id,")
        lines.append("    difficulty_level, lesson_type, created_on, created_by,")
        lines.append("    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), '{lesson_name}', '{desc}',")
        lines.append(f"    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', '{difficulty}',")
        lines.append(f"    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',")
        lines.append(f"    'SUPER_ADMIN', false, false, {grade}, NULL, NULL")
        lines.append("  ) RETURNING lesson_id INTO v_lesson_id;")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'topic_overview', '{topic_overview}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', '{guidelines}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_heading', '{sql_escape(EXAMPLE_HEADING)}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_content', '{EXAMPLE_CONTENT}', NOW(), NOW());")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_version_new (")
        lines.append("    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), v_lesson_id, 1, '{lesson_name}',")
        lines.append(f"    '{lesson_json_escaped}',")
        lines.append(f"    'published', true, NOW()")
        lines.append("  );")
        lines.append("END $$;")
        lines.append("")

    return "\n".join(lines)


# ╔══════════════════════════════════════════════════════════════════════════╗
# ║  4. RAPID QUESTIONS                                                      ║
# ╚══════════════════════════════════════════════════════════════════════════╝

def generate_rapid_questions_sql():
    mod = load_module("rq_data", os.path.join(BASE_DIR, "curriculum_data.py"))
    lessons_data = mod.lessons_data

    EXAMPLE_HEADING = "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."
    EXAMPLE_CONTENT = "My favorite fruit is MANGO . My favorite hobby is DRAWING."

    lines = []
    lines.append("-- =====================================================")
    lines.append("-- RAPID QUESTIONS (Quick Thinking) — 360 lessons")
    lines.append("-- Run this entire script in a single pgAdmin query window")
    lines.append("-- =====================================================")
    lines.append("")

    for idx, lesson in enumerate(lessons_data, 1):
        lesson_name = sql_escape(lesson["lesson_name"])
        grade = lesson["grade"]
        difficulty = lesson["difficulty"]
        theme = sql_escape(lesson["theme"])
        questions_joined = sql_escape(".".join(lesson["questions"]))
        sel = sql_escape(lesson.get("sel", ""))
        instruction = sql_escape(lesson.get("instruction", ""))

        lesson_json = json.dumps({
            "lesson_name": lesson["lesson_name"],
            "lesson_description": "Rapid Question and Answers",
            "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2",
            "grade": grade,
            "section": None,
            "difficulty_level": difficulty,
            "lesson_type": "Quick Thinking",
            "contents": [
                {"content_key": "theme", "content_value": lesson["theme"]},
                {"content_key": "rapid_questions", "content_value": ".".join(lesson["questions"])},
                {"content_key": "example_heading", "content_value": EXAMPLE_HEADING},
                {"content_key": "example_content", "content_value": EXAMPLE_CONTENT}
            ]
        })
        lesson_json_escaped = sql_escape(lesson_json)

        lines.append(f"-- Lesson {idx}: {lesson['lesson_name']}")
        lines.append("DO $$")
        lines.append("DECLARE v_lesson_id UUID;")
        lines.append("BEGIN")
        lines.append("  INSERT INTO bantrly.lesson (")
        lines.append("    lesson_id, lesson_name, lesson_description, training_module_id,")
        lines.append("    difficulty_level, lesson_type, created_on, created_by,")
        lines.append("    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), '{lesson_name}', 'Rapid Question and Answers',")
        lines.append(f"    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', '{difficulty}',")
        lines.append(f"    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',")
        lines.append(f"    'SUPER_ADMIN', false, false, {grade}, NULL, NULL")
        lines.append("  ) RETURNING lesson_id INTO v_lesson_id;")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'theme', '{theme}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'rapid_questions', '{questions_joined}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_heading', '{sql_escape(EXAMPLE_HEADING)}', NOW(), NOW()),")
        lines.append(f"    (gen_random_uuid(), v_lesson_id, 'example_content', '{sql_escape(EXAMPLE_CONTENT)}', NOW(), NOW());")
        lines.append("")
        lines.append("  INSERT INTO bantrly.lesson_version_new (")
        lines.append("    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at")
        lines.append("  ) VALUES (")
        lines.append(f"    gen_random_uuid(), v_lesson_id, 1, '{lesson_name}',")
        lines.append(f"    '{lesson_json_escaped}',")
        lines.append(f"    'published', true, NOW()")
        lines.append("  );")
        lines.append("END $$;")
        lines.append("")

    return "\n".join(lines)


# ── main ─────────────────────────────────────────────────────────────────────

if __name__ == "__main__":
    base = os.path.dirname(__file__)

    print("Generating audio_postcard_insert.sql ...")
    with open(os.path.join(base, "audio_postcard_insert.sql"), "w", encoding="utf-8") as f:
        f.write(generate_audio_postcard_sql())

    print("Generating story_building_insert.sql ...")
    with open(os.path.join(base, "story_building_insert.sql"), "w", encoding="utf-8") as f:
        f.write(generate_story_building_sql())

    print("Generating short_presentation_insert.sql ...")
    with open(os.path.join(base, "short_presentation_insert.sql"), "w", encoding="utf-8") as f:
        f.write(generate_short_presentation_sql())

    print("Generating rapid_questions_insert.sql ...")
    with open(os.path.join(base, "rapid_questions_insert.sql"), "w", encoding="utf-8") as f:
        f.write(generate_rapid_questions_sql())

    print("\n✅ All 4 SQL files generated!")
    print("   → audio_postcard_insert.sql")
    print("   → story_building_insert.sql")
    print("   → short_presentation_insert.sql")
    print("   → rapid_questions_insert.sql")
