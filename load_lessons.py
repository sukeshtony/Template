# load_lessons.py
import psycopg2
import json
from pathlib import Path

from curriculum_data import lessons_data
from build_lesson import build_questions, build_lesson_json

conn = psycopg2.connect(
    "postgresql://administrator:MooP%40ss11%21@34.28.181.90:5432/bantrly"
)
cur = conn.cursor()

lesson_sql = Path("C:/Users/Sukesh/Desktop/Template/lesson.sql").read_text()
lesson_content_sql = Path("C:/Users/Sukesh/Desktop/Template/lesson_content.sql").read_text()
lesson_version_sql = Path("C:/Users/Sukesh/Desktop/Template/lesson_version_new.sql").read_text()

for lesson in lessons_data:
    # 1️⃣ Insert lesson
    cur.execute(
        lesson_sql,
        {
            "lesson_name": lesson["lesson_name"],
            "difficulty": lesson["difficulty"],
            "grade": lesson["grade"]
        }
    )
    lesson_id = cur.fetchone()[0]

    # 2️⃣ Insert lesson content
    cur.execute(
        lesson_content_sql,
        {
            "lesson_id": lesson_id,
            "theme": lesson["theme"],
            "questions_joined": build_questions(lesson["questions"])
        }
    )

    # 3️⃣ Insert lesson version
    cur.execute(
        lesson_version_sql,
        {
            "lesson_id": lesson_id,
            "lesson_name": lesson["lesson_name"],
            "lesson_json": build_lesson_json(lesson)
        }
    )

conn.commit()
cur.close()
conn.close()
