import json
from collections import Counter

# Read the JSON file
with open('presentations_data.json', 'r', encoding='utf-8') as f:
    data = json.load(f)

# Count difficulties
difficulty_counter = Counter()
grade_difficulty_counter = {}
issues = []

for idx, lesson in enumerate(data):
    difficulty = lesson.get('difficulty')
    grade = lesson.get('grade')

    # Count overall difficulty
    difficulty_counter[difficulty] += 1

    # Count by grade and difficulty
    key = f"Grade {grade}"
    if key not in grade_difficulty_counter:
        grade_difficulty_counter[key] = Counter()
    grade_difficulty_counter[key][difficulty] += 1

    # Check for potential issues
    if not difficulty or difficulty not in ['EASY', 'MEDIUM', 'HARD']:
        issues.append({
            'index': idx,
            'lesson_name': lesson.get('lesson_name'),
            'grade': grade,
            'difficulty': difficulty,
            'issue': 'Invalid or missing difficulty'
        })

    if not grade or not isinstance(grade, int):
        issues.append({
            'index': idx,
            'lesson_name': lesson.get('lesson_name'),
            'grade': grade,
            'difficulty': difficulty,
            'issue': 'Invalid or missing grade'
        })

# Print results
print("=" * 80)
print("OVERALL DIFFICULTY DISTRIBUTION")
print("=" * 80)
for diff in ['EASY', 'MEDIUM', 'HARD']:
    count = difficulty_counter.get(diff, 0)
    print(f"{diff:10} : {count:4} lessons (Expected: 120, Difference: {count - 120:+d})")

print(f"\nTotal lessons: {len(data)}")
print(f"Expected total: 360 (120 EASY + 120 MEDIUM + 120 HARD)")
print(f"Difference: {len(data) - 360:+d}")

print("\n" + "=" * 80)
print("DIFFICULTY DISTRIBUTION BY GRADE")
print("=" * 80)
for grade in sorted(grade_difficulty_counter.keys()):
    print(f"\n{grade}:")
    for diff in ['EASY', 'MEDIUM', 'HARD']:
        count = grade_difficulty_counter[grade].get(diff, 0)
        print(f"  {diff:10} : {count:4} lessons")
    total = sum(grade_difficulty_counter[grade].values())
    print(f"  {'Total':10} : {total:4} lessons")

# Find entries with unusual patterns
print("\n" + "=" * 80)
print("CHECKING FOR DATA QUALITY ISSUES")
print("=" * 80)

# Check for duplicates
lesson_names = [l.get('lesson_name') for l in data]
duplicate_names = [name for name in set(lesson_names) if lesson_names.count(name) > 1]

if duplicate_names:
    print(f"\n⚠️  Found {len(duplicate_names)} duplicate lesson names:")
    for name in duplicate_names[:10]:  # Show first 10
        indices = [i for i, l in enumerate(data) if l.get('lesson_name') == name]
        print(f"  - '{name}' appears at indices: {indices}")

# Check for missing or invalid data
if issues:
    print(f"\n⚠️  Found {len(issues)} entries with invalid data:")
    for issue in issues[:20]:  # Show first 20
        print(f"  - Index {issue['index']}: {issue['issue']}")
        print(f"    Name: {issue['lesson_name']}")
        print(f"    Grade: {issue['grade']}, Difficulty: {issue['difficulty']}")

# Find potentially corrupted entries (unusual patterns)
print("\n" + "=" * 80)
print("SEARCHING FOR POTENTIALLY CORRUPTED ENTRIES")
print("=" * 80)

corrupted_entries = []
for idx, lesson in enumerate(data):
    # Check for empty or very short topic overview
    topic = lesson.get('topic_overview', '')
    if len(topic) < 10:
        corrupted_entries.append({
            'index': idx,
            'lesson_name': lesson.get('lesson_name'),
            'issue': f'Topic overview too short ({len(topic)} chars)'
        })

    # Check for missing preparation guidelines
    guidelines = lesson.get('preparation_guidelines', [])
    if not guidelines or len(guidelines) < 2:
        corrupted_entries.append({
            'index': idx,
            'lesson_name': lesson.get('lesson_name'),
            'issue': f'Too few preparation guidelines ({len(guidelines)})'
        })

if corrupted_entries:
    print(f"\n⚠️  Found {len(corrupted_entries)} potentially corrupted entries:")
    for entry in corrupted_entries[:20]:  # Show first 20
        print(f"  - Index {entry['index']}: {entry['issue']}")
        print(f"    Lesson: {entry['lesson_name']}")
else:
    print("\n✅ No obviously corrupted entries found")

print("\n" + "=" * 80)
print("ANALYSIS COMPLETE")
print("=" * 80)
