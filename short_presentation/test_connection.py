import psycopg2
from pathlib import Path
from data import presentations_data
from build_presentation import build_guidelines, build_presentation_json

print("Testing database connection and queries...")

try:
    # Test connection
    print("\n1. Testing connection...")
    conn = psycopg2.connect(
        "postgresql://administrator:MooP%40ss11%21@34.28.181.90:5432/bantrly"
    )
    cur = conn.cursor()
    print("✅ Connection successful")

    # Test if we can query the database
    print("\n2. Testing basic query...")
    cur.execute("SELECT NOW()")
    result = cur.fetchone()
    print(f"✅ Database time: {result[0]}")

    # Load SQL files
    print("\n3. Loading SQL files...")
    lesson_sql = Path(r"C:\Users\Sukesh\Desktop\Template\short_presentation\lesson.sql").read_text()
    lesson_content_sql = Path(r"C:\Users\Sukesh\Desktop\Template\short_presentation\lesson_content.sql").read_text()
    lesson_version_sql = Path(r"C:\Users\Sukesh\Desktop\Template\short_presentation\lesson_version_new.sql").read_text()
    print("✅ SQL files loaded")

    # Test with first lesson only
    print("\n4. Testing with first lesson...")
    lesson = presentations_data[0]
    print(f"   Lesson: {lesson['lesson_name']}")
    print(f"   Grade: {lesson['grade']}")
    print(f"   Difficulty: {lesson['difficulty']}")

    # Test lesson insert
    print("\n5. Testing lesson.sql insert...")
    print("   SQL Query preview:")
    print(f"   lesson_name: {lesson['lesson_name']}")
    print(f"   difficulty: {lesson['difficulty']}")

    cur.execute(
        lesson_sql,
        {
            "lesson_name": lesson["lesson_name"],
            "lesson_description": f"Short Presentation Skills for Grade {lesson['grade']}",
            "difficulty": lesson["difficulty"],
            "grade": lesson["grade"]
        }
    )
    lesson_id = cur.fetchone()[0]
    print(f"✅ Lesson inserted successfully! lesson_id: {lesson_id}")

    # Test lesson_content insert (this is where it's failing)
    print("\n6. Testing lesson_content.sql insert...")
    print(f"   lesson_id: {lesson_id}")
    print(f"   topic_overview length: {len(lesson['topic_overview'])} chars")
    guidelines = build_guidelines(lesson["preparation_guidelines"])
    print(f"   guidelines: {guidelines}")
    print(f"   guidelines length: {len(guidelines)} chars")

    print("\n   SQL Query:")
    print(lesson_content_sql)
    print("\n   Parameters:")
    params = {
        "lesson_id": lesson_id,
        "topic_overview": lesson["topic_overview"],
        "guidelines": guidelines
    }
    print(f"   {params}")

    cur.execute(
        lesson_content_sql,
        params
    )
    print("✅ Lesson content inserted successfully!")

    # Test lesson_version insert
    print("\n7. Testing lesson_version.sql insert...")
    lesson_json = build_presentation_json(lesson)
    print(f"   JSON length: {len(lesson_json)} chars")

    cur.execute(
        lesson_version_sql,
        {
            "lesson_id": lesson_id,
            "lesson_name": lesson["lesson_name"],
            "lesson_json": lesson_json
        }
    )
    print("✅ Lesson version inserted successfully!")

    # Rollback to avoid actually inserting test data
    print("\n8. Rolling back test transaction...")
    conn.rollback()
    print("✅ Test complete - no data committed")

except Exception as e:
    print(f"\n❌ ERROR: {type(e).__name__}")
    print(f"   Message: {str(e)}")
    import traceback
    print("\n   Full traceback:")
    traceback.print_exc()

    if 'conn' in locals():
        conn.rollback()

finally:
    if 'cur' in locals():
        cur.close()
    if 'conn' in locals():
        conn.close()
    print("\nConnection closed")
