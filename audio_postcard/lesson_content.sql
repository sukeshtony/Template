INSERT INTO bantrly.lesson_content (
    content_id,
    lesson_id,
    content_key,
    content_value,
    created_at,
    updated_at
) VALUES
(gen_random_uuid(), %(lesson_id)s, 'topic', %(topic)s, NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'instructions', %(instructions)s, NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());
