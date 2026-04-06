import json


def build_postcard_json(data):
    """Build the JSON payload for an Audio Postcard / Personal Expression lesson."""
    return json.dumps({
        "lesson_name": data["lesson_name"],
        "lesson_description": f"Audio Postcard for {data['grade']}th grade",
        "training_module_id": "e39352c6-f890-464f-be63-557fe374362a",
        "grade": data["grade"],
        "section": None,
        "difficulty_level": data["difficulty"],
        "lesson_type": "Personal Expression",
        "contents": [
            {
                "content_key": "topic",
                "content_value": data["topic"]
            },
            {
                "content_key": "instructions",
                "content_value": data["instructions"]
            },
            {
                "content_key": "example_topic",
                "content_value": "Visiting a new college campus"
            },
            {
                "content_key": "example_instruction",
                "content_value": (
                    "Describe the campus layout, interesting facilities, "
                    "and your feelings about the environment."
                )
            },
            {
                "content_key": "example_content",
                "content_value": (
                    "Hello! I recently visited a college campus that left a "
                    "strong impression on me. The sprawling green quads, modern "
                    "labs, and historic libraries created a unique blend of "
                    "tradition and innovation. I felt inspired and excited about "
                    "the possibility of studying there, and I can't wait to "
                    "share more details with you!"
                )
            }
        ]
    })
