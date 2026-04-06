"""
extract_data.py — Extract Story Building lesson data from a Word document.

Expected Word document format:
  - Section headers: "GRADE N - MODULE 2: BUILD A STORY WITH KEYWORDS (EASY/MEDIUM/HARD)"
  - Each lesson is a SINGLE paragraph containing multiple lines:
      Lesson N – Title
       Keywords: word1, word2, ...
       Story: ...
       SEL Focus: ...

Reads from the .docx and writes a .txt file with Python-ready list-of-dicts
that can be pasted directly into data.py.
"""

from docx import Document
import re

INPUT_FILE = r"C:\Users\Sukesh\Desktop\Template\story_building\Build A Story Content (1).docx"
OUTPUT_FILE = "stories_data.txt"

doc = Document(INPUT_FILE)

# Flatten all paragraph text into individual lines
lines = []
for para in doc.paragraphs:
    for line in para.text.splitlines():
        stripped = line.strip()
        if stripped:
            lines.append(stripped)

stories_data = []
seen = set()  # Track duplicates by (lesson_name, grade, difficulty)

current_grade = None
current_difficulty = None
i = 0

while i < len(lines):
    line = lines[i]

    # -------- Grade + Difficulty header --------
    # e.g. "GRADE 1 - MODULE 2: BUILD A STORY WITH KEYWORDS (EASY)"
    header_match = re.match(
        r"GRADE\s+(\d+)\s*-\s*MODULE.*\((EASY|MEDIUM|HARD)\)",
        line, re.IGNORECASE
    )
    if header_match:
        current_grade = int(header_match.group(1))
        current_difficulty = header_match.group(2).upper()
        i += 1
        continue

    # -------- Lesson detection --------
    # Matches "Lesson N – Title" or "Lesson N - Title"
    lesson_match = re.match(r"^Lesson\s+\d+\s*[\u2013\-\u2014:]+\s*(.+)$", line)
    if lesson_match:
        lesson_name = lesson_match.group(1).strip()

        # Scan ahead for Keywords
        keywords = ""
        j = i + 1
        while j < len(lines):
            cur = lines[j]

            # Keywords line
            kw_match = re.match(r"^Keywords?\s*:\s*(.+)$", cur, re.IGNORECASE)
            if kw_match:
                keywords = kw_match.group(1).strip()
                break

            # Stop if we hit the next lesson or section header
            if re.match(r"^Lesson\s+\d+\s*[\u2013\-\u2014:]", cur):
                break
            if re.match(r"^GRADE\s+\d+", cur, re.IGNORECASE):
                break

            j += 1

        # Deduplicate (Easy section appears twice in some grades)
        key = (lesson_name, current_grade, current_difficulty)
        if key not in seen:
            seen.add(key)
            stories_data.append({
                "lesson_name": lesson_name,
                "grade": current_grade,
                "difficulty": current_difficulty,
                "keywords": keywords,
            })

    i += 1

# -------- Save as Python-formatted text file --------
with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    f.write("stories_data = [\n")
    for entry in stories_data:
        # Escape any quotes in text
        name = entry["lesson_name"].replace('"', '\\"')
        kw = entry["keywords"].replace('"', '\\"')
        f.write("    {\n")
        f.write(f'        "lesson_name": "{name}",\n')
        f.write(f'        "grade": {entry["grade"]},\n')
        f.write(f'        "difficulty": "{entry["difficulty"]}",\n')
        f.write(f'        "keywords": "{kw}"\n')
        f.write("    },\n")
    f.write("]\n")

print(f"✅ Extracted {len(stories_data)} lessons (duplicates removed)")
print(f"📄 Saved to {OUTPUT_FILE}")
