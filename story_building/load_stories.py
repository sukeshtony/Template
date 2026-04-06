# load_stories.py
import psycopg2
from pathlib import Path

from data import stories_data
from build_story import build_story_json

conn = psycopg2.connect(
    "postgresql://administrator:MooP%40ss11%21@34.28.181.90:5432/bantrly"
)
cur = conn.cursor()

lesson_sql = Path(r"C:\Users\Sukesh\Desktop\Template\story_building\lesson.sql").read_text()
lesson_content_sql = Path(r"C:\Users\Sukesh\Desktop\Template\story_building\lesson_content.sql").read_text()
lesson_version_sql = Path(r"C:\Users\Sukesh\Desktop\Template\story_building\lesson_version_new.sql").read_text()

for lesson in stories_data:
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
            "keywords": lesson["keywords"]
        }
    )

    # 3️⃣ Insert lesson version
    cur.execute(
        lesson_version_sql,
        {
            "lesson_id": lesson_id,
            "lesson_name": lesson["lesson_name"],
            "lesson_json": build_story_json(lesson)
        }
    )

conn.commit()
cur.close()
conn.close()

print("✅ All story building lessons loaded successfully!")
