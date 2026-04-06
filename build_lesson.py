import json

def build_questions(questions):
    return ".".join(questions)

def build_lesson_json(data):
    return json.dumps({
        "lesson_name": data["lesson_name"],
        "lesson_description": "Rapid Question and Answers",
        "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2",
        "grade": data["grade"],
        "section": None,
        "difficulty_level": data["difficulty"],
        "lesson_type": "Quick Thinking",
        "contents": [
            {
                "content_key": "theme",
                "content_value": data["theme"]
            },
            {
                "content_key": "rapid_questions",
                "content_value": build_questions(data["questions"])
            },
            {
                "content_key": "example_heading",
                "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."
            },
            {
                "content_key": "example_content",
                "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."
            }
        ]
    })