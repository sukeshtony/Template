INSERT INTO bantrly.lesson_content (
    content_id,
    lesson_id,
    content_key,
    content_value,
    created_at,
    updated_at
) VALUES
(gen_random_uuid(), %(lesson_id)s, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'keywords', %(keywords)s, NOW(), NOW());
