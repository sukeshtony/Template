"""
extract_data.py — Extract Debate lesson data from a Word document.

Expected format per lesson block:
  Grade: 1
  Easy
  Topic: Shoes vs. Slippers
  Debate Topic: Slippers are better than shoes
  AI Side: Slippers
  User Side: Shoes
  AI Lines:
  Line 1
  Line 2
  Line 3

Output: debate_data.txt — Python-ready list of dicts for data.py
"""

from docx import Document
import re

INPUT_FILE = r"C:\Users\Sukesh\Desktop\Template\debate\lesson_final.docx"
OUTPUT_FILE = "debate_data.txt"

# Fixed example values (same for all lessons as requested)
EXAMPLE_TOPIC = "Ice Cream is better than Pizza"
EXAMPLE_USER_SIDE = "Ice cream is cold and sweet, and it makes people happy on hot days!"
EXAMPLE_AI_SIDE = "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."

doc = Document(INPUT_FILE)

# Flatten all paragraph text into individual lines
lines = []
for para in doc.paragraphs:
    for line in para.text.splitlines():
        stripped = line.strip()
        if stripped:
            lines.append(stripped)

debate_data = []
i = 0

while i < len(lines):
    line = lines[i]

    # -------- Grade detection --------
    grade_match = re.match(r"^Grade:\s*(\d+)$", line, re.IGNORECASE)
    if grade_match:
        current_grade = int(grade_match.group(1))

        # Next line should be difficulty
        i += 1
        if i >= len(lines):
            break
        diff_line = lines[i].strip().upper()
        if diff_line in ("EASY", "MEDIUM", "HARD"):
            current_difficulty = diff_line
        else:
            i += 1
            continue

        # Next: Topic
        i += 1
        if i >= len(lines):
            break
        topic_match = re.match(r"^Topic:\s*(.+)$", lines[i], re.IGNORECASE)
        lesson_name = topic_match.group(1).strip() if topic_match else ""

        # Next: Debate Topic
        i += 1
        if i >= len(lines):
            break
        debate_match = re.match(r"^Debate Topic:\s*(.+)$", lines[i], re.IGNORECASE)
        topic = debate_match.group(1).strip() if debate_match else ""

        # Next: AI Side
        i += 1
        if i >= len(lines):
            break
        ai_match = re.match(r"^AI Side:\s*(.+)$", lines[i], re.IGNORECASE)
        ai_side = ai_match.group(1).strip() if ai_match else ""

        # Next: User Side
        i += 1
        if i >= len(lines):
            break
        user_match = re.match(r"^User Side:\s*(.+)$", lines[i], re.IGNORECASE)
        user_side = user_match.group(1).strip() if user_match else ""

        # Next: AI Lines: header
        i += 1
        if i >= len(lines):
            break
        if lines[i].strip().lower().startswith("ai lines"):
            # Collect the content lines until next "Grade:" or end
            content_lines = []
            i += 1
            while i < len(lines):
                cur = lines[i]
                # Stop if we hit the next lesson block
                if re.match(r"^Grade:\s*\d+", cur, re.IGNORECASE):
                    break
                content_lines.append(cur)
                i += 1

            content = "\\n".join(content_lines)

            debate_data.append({
                "lesson_name": lesson_name,
                "grade": current_grade,
                "difficulty": current_difficulty,
                "topic": topic,
                "ai_side": ai_side,
                "user_side": user_side,
                "content": content,
                "example_topic": EXAMPLE_TOPIC,
                "example_user_side": EXAMPLE_USER_SIDE,
                "example_ai_side": EXAMPLE_AI_SIDE,
            })
            continue  # Don't increment i, the while loop will re-check current line

    i += 1

# -------- Save as Python-formatted text file --------
with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
    f.write("debate_data = [\n")
    for entry in debate_data:
        name = entry["lesson_name"].replace('"', '\\"')
        topic = entry["topic"].replace('"', '\\"')
        ai_side = entry["ai_side"].replace('"', '\\"')
        user_side = entry["user_side"].replace('"', '\\"')
        content = entry["content"].replace('"', '\\"')
        ex_topic = entry["example_topic"].replace('"', '\\"')
        ex_user = entry["example_user_side"].replace('"', '\\"')
        ex_ai = entry["example_ai_side"].replace('"', '\\"')

        f.write("    {\n")
        f.write(f'        "lesson_name": "{name}",\n')
        f.write(f'        "grade": {entry["grade"]},\n')
        f.write(f'        "difficulty": "{entry["difficulty"]}",\n')
        f.write(f'        "topic": "{topic}",\n')
        f.write(f'        "ai_side": "{ai_side}",\n')
        f.write(f'        "user_side": "{user_side}",\n')
        f.write(f'        "content": "{content}",\n')
        f.write(f'        "example_topic": "{ex_topic}",\n')
        f.write(f'        "example_user_side": "{ex_user}",\n')
        f.write(f'        "example_ai_side": "{ex_ai}"\n')
        f.write("    },\n")
    f.write("]\n")

print(f"✅ Extracted {len(debate_data)} lessons")
print(f"📄 Saved to {OUTPUT_FILE}")
