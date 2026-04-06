INSERT INTO bantrly.lesson_content (
    content_id,
    lesson_id,
    content_key,
    content_value,
    created_at,
    updated_at
) VALUES
(gen_random_uuid(), %(lesson_id)s, 'topic_overview', %(topic_overview)s, NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'preparation_guidelines', %(guidelines)s, NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_heading',
 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!',
 NOW(), NOW()),
(gen_random_uuid(), %(lesson_id)s, 'example_content',
 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it’s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!',
 NOW(), NOW());
