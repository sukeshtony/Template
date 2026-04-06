INSERT INTO bantrly.lesson_content (
    content_id,
    lesson_id,
    content_key,
    content_value,
    created_at,
    updated_at
) VALUES
(gen_random_uuid(), %(lesson_id)s, 'theme', %(theme)s, NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'rapid_questions', %(questions_joined)s, NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_heading',
 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.',
 NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_content',
 'My favorite fruit is MANGO . My favorite hobby is DRAWING.',
 NOW(), NOW());
