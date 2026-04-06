import json

# Read the JSON file
with open('presentations_data.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

print("=" * 80)
print("CORRUPTION ANALYSIS REPORT")
print("=" * 80)

print("\nSUMMARY:")
print("- Total lessons: 359 (Expected: 360) - MISSING 1 LESSON")
print("- EASY: 120 (Correct)")
print("- MEDIUM: 130 (Expected: 120) - 10 EXTRA")
print("- HARD: 109 (Expected: 120) - 11 MISSING")

print("\n" + "=" * 80)
print("CORRUPTED GRADE: GRADE 1")
print("=" * 80)
print("Issue: Grade 1 has 20 MEDIUM and 0 HARD lessons")
print("Expected: 10 EASY, 10 MEDIUM, 10 HARD")
print("\nGrade 1 MEDIUM lessons (10 should be changed to HARD):")

grade_1_medium = []
for idx, lesson in enumerate(data):
    if lesson.get('grade') == 1 and lesson.get('difficulty') == 'MEDIUM':
        grade_1_medium.append({
            'index': idx,
            'lesson_name': lesson.get('lesson_name')
        })

for i, entry in enumerate(grade_1_medium, 1):
    print(f"\n{i}. Index {entry['index']}: {entry['lesson_name']}")

print(f"\nSuggestion: Change the last 10 MEDIUM lessons to HARD for Grade 1")
print(f"(Indices: {[e['index'] for e in grade_1_medium[10:]]})")

print("\n" + "=" * 80)
print("CORRUPTED GRADE: GRADE 6")
print("=" * 80)
print("Issue: Grade 6 has 9 HARD lessons instead of 10")
print("Expected: 10 EASY, 10 MEDIUM, 10 HARD")
print("\nGrade 6 lessons:")

grade_6_lessons = []
for idx, lesson in enumerate(data):
    if lesson.get('grade') == 6:
        grade_6_lessons.append({
            'index': idx,
            'difficulty': lesson.get('difficulty'),
            'lesson_name': lesson.get('lesson_name')
        })

print(f"\nEASY: {sum(1 for l in grade_6_lessons if l['difficulty'] == 'EASY')}")
print(f"MEDIUM: {sum(1 for l in grade_6_lessons if l['difficulty'] == 'MEDIUM')}")
print(f"HARD: {sum(1 for l in grade_6_lessons if l['difficulty'] == 'HARD')}")

print("\nGrade 6 HARD lessons:")
for entry in grade_6_lessons:
    if entry['difficulty'] == 'HARD':
        print(f"- Index {entry['index']}: {entry['lesson_name']}")

print("\nSuggestion: Grade 6 is missing 1 HARD lesson - check the source document")

print("\n" + "=" * 80)
print("RECOMMENDED FIXES")
print("=" * 80)
print("\n1. GRADE 1: Change 10 MEDIUM lessons to HARD")
print("   Specific indices to change from MEDIUM -> HARD:")
if len(grade_1_medium) >= 10:
    for entry in grade_1_medium[10:]:
        print(f"   - Index {entry['index']}: {entry['lesson_name']}")

print("\n2. GRADE 6: Add 1 missing HARD lesson")
print("   - Check the source Word document for missing Grade 6 HARD lesson")
print("   - OR check if one of the existing Grade 6 MEDIUM lessons should be HARD")

print("\n" + "=" * 80)
