from docx import Document
import re
from pprint import pformat

DOC_PATH = "rapid question.docx"
OUTPUT_FILE = "lessons_data.txt"

def parse_word_to_lessons(doc_path):
    doc = Document(doc_path)

    lessons_data = []

    current_grade = None
    current_difficulty = None
    current_lesson = None

    for para in doc.paragraphs:
        lines = [line.strip() for line in para.text.splitlines() if line.strip()]

        for text in lines:

            # ---- MODULE / GRADE / DIFFICULTY ----
            module_match = re.search(
                r"Grade\s+(\d+)\s+—\s+(Easy|Medium|Hard)",
                text,
                re.IGNORECASE
            )
            if module_match:
                current_grade = int(module_match.group(1))
                current_difficulty = module_match.group(2).upper()
                continue

            # ---- LESSON TITLE ----
            lesson_match = re.match(r"^Lesson\s+\d+:\s+(.+)$", text)
            if lesson_match:
                if current_lesson:
                    lessons_data.append(current_lesson)

                current_lesson = {
                    "lesson_name": lesson_match.group(1).strip(),
                    "grade": current_grade,
                    "difficulty": current_difficulty,
                    "theme": None,
                    "sel": None,
                    "instruction": None,
                    "questions": []
                }
                continue

            # ---- THEME ----
            if current_lesson and text.lower().startswith("theme:"):
                current_lesson["theme"] = text.split(":", 1)[1].strip()
                continue

            # ---- SEL ----
            if current_lesson and text.lower().startswith("sel:"):
                current_lesson["sel"] = text.split(":", 1)[1].strip()
                continue

            # ---- INSTRUCTION ----
            if current_lesson and text.lower().startswith("instruction:"):
                current_lesson["instruction"] = text.split(":", 1)[1].strip()
                continue

            # ---- QUESTIONS ----
            if current_lesson:
                current_lesson["questions"].append(text)

    # Append last lesson
    if current_lesson:
        lessons_data.append(current_lesson)

    return lessons_data


if __name__ == "__main__":
    lessons_data = parse_word_to_lessons(DOC_PATH)

    # Write to text file
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write("lessons_data = ")
        f.write(pformat(lessons_data, width=120))

    print(f"✅ Lessons data written to {OUTPUT_FILE}")
