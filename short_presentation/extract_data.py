from docx import Document
import re
import json

INPUT_FILE = r"C:\Users\Sukesh\Desktop\Template\short_presentation\_Short Informative Presentation.docx"
OUTPUT_FILE = "presentations_data.json"

# -------- Read DOCX correctly --------
doc = Document(INPUT_FILE)
text = "\n".join(p.text for p in doc.paragraphs if p.text.strip())

lines = [l.strip() for l in text.splitlines() if l.strip()]

presentations_data = []

current_grade = None
current_difficulty = None
i = 0

while i < len(lines):
    line = lines[i]

    # -------- Grade detection --------
    grade_match = re.search(r"GRADE\s+(\d+)", line, re.IGNORECASE)
    if grade_match:
        current_grade = int(grade_match.group(1))

    # -------- Difficulty detection --------
    upper = line.upper()
    if "EASY" in upper:
        current_difficulty = "EASY"
    elif "MEDIUM" in upper:
        current_difficulty = "MEDIUM"
    elif "HARD" in upper:
        current_difficulty = "HARD"

    # -------- Lesson detection --------
    lesson_match = re.match(r"Lesson\s+\d+:\s+(.*)", line)
    if lesson_match:
        lesson_name = lesson_match.group(1).strip()

        # Move to Topic Overview
        i += 1
        while i < len(lines) and "Topic Overview" not in lines[i]:
            i += 1
        i += 1
        topic_overview = lines[i].strip()

        # Move to Preparation Guidelines
        i += 1
        while i < len(lines) and "Preparation Guidelines" not in lines[i]:
            i += 1

        guidelines = []
        i += 1
        while i < len(lines):
            stop_line = lines[i].upper()
            if (
                stop_line.startswith("LESSON")
                or "GRADE" in stop_line
                or "EASY" in stop_line
                or "MEDIUM" in stop_line
                or "HARD" in stop_line
            ):
                i -= 1
                break

            guidelines.append(lines[i])
            i += 1

        presentations_data.append({
            "lesson_name": lesson_name,
            "grade": current_grade,
            "difficulty": current_difficulty,
            "topic_overview": topic_overview,
            "preparation_guidelines": guidelines
        })

    i += 1

# -------- Save JSON --------
with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    json.dump(presentations_data, f, indent=2, ensure_ascii=False)

print(f"✅ Extracted {len(presentations_data)} lessons")
print(f"📄 Saved to {OUTPUT_FILE}")
