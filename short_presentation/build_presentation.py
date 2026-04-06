import json

def build_guidelines(points):
    return ".".join(points)

def build_presentation_json(data):
    return json.dumps({
        "lesson_name": data["lesson_name"],
        "lesson_description": f"Short Presentation Skills for Grade {data['grade']}",
        "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72",
        "grade": data["grade"],
        "section": None,
        "difficulty_level": data["difficulty"],
        "lesson_type": "Presentation Skill",
        "contents": [
            {
                "content_key": "topic_overview",
                "content_value": data["topic_overview"]
            },
            {
                "content_key": "preparation_guidelines",
                "content_value": build_guidelines(data["preparation_guidelines"])
            },
            {
                "content_key": "example_heading",
                "content_value": (
                    "Say what reading is. List 2–3 benefits of reading regularly. "
                    "Explain how it helps your mind and creativity. "
                    "End with a strong call-to-action!"
                )
            },
            {
                "content_key": "example_content",
                "content_value": (
                    "Reading is when you explore stories or learn new things through books. "
                    "It can help you relax, spark your imagination, and improve your vocabulary. "
                    "Plus, it’s a great way to travel to new worlds without leaving home. "
                    "So grab a book today and start your next adventure!"
                )
            }
        ]
    })
