# load_postcards.py
import psycopg2
from pathlib import Path

from data import postcards_data
from build_postcard import build_postcard_json

conn = psycopg2.connect(
    "postgresql://administrator:MooP%40ss11%21@34.28.181.90:5432/bantrly"
)
cur = conn.cursor()

lesson_sql = Path(r"C:\Users\Sukesh\Desktop\Template\audio_postcard\lesson.sql").read_text()
lesson_content_sql = Path(r"C:\Users\Sukesh\Desktop\Template\audio_postcard\lesson_content.sql").read_text()
lesson_version_sql = Path(r"C:\Users\Sukesh\Desktop\Template\audio_postcard\lesson_version_new.sql").read_text()

for lesson in postcards_data:
    # 1️⃣ Insert lesson
    cur.execute(
        lesson_sql,
        {
            "lesson_name": lesson["lesson_name"],
            "lesson_description": f"Audio Postcard for {lesson['grade']}th grade",
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
            "topic": lesson["topic"],
            "instructions": lesson["instructions"]
        }
    )

    # 3️⃣ Insert lesson version
    cur.execute(
        lesson_version_sql,
        {
            "lesson_id": lesson_id,
            "lesson_name": lesson["lesson_name"],
            "lesson_json": build_postcard_json(lesson)
        }
    )

conn.commit()
cur.close()
conn.close()

print("✅ All audio postcard lessons loaded successfully!")
