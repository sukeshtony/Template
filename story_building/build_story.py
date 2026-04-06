import json


def build_story_json(data):
    """Build the JSON payload for a Story Building with Keywords lesson."""
    return json.dumps({
        "lesson_name": data["lesson_name"],
        "lesson_description": "Build a Story With Keywords for the user",
        "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b",
        "class_name": str(data["grade"]),
        "difficulty_level": data["difficulty"],
        "lesson_type": "Story Building with Keywords",
        "contents": [
            {
                "content_key": "example_question",
                "content_value": "forest, lantern, path, courage, adventure"
            },
            {
                "content_key": "example_content",
                "content_value": (
                    "In a quiet forest, a child discovered a glowing lantern "
                    "lying on the path. Holding it high, they found the courage "
                    "to walk deeper into the woods. Every step revealed hidden "
                    "wonders, and the adventure showed that bravery lights the "
                    "way forward."
                )
            },
            {
                "content_key": "keywords",
                "content_value": data["keywords"]
            }
        ]
    })
