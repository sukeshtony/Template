INSERT INTO bantrly.lesson_version_new (
    lesson_version_id,
    lesson_id,
    version_number,
    title,
    content,
    status,
    is_latest,
    created_at
) VALUES (
    gen_random_uuid(),
    %(lesson_id)s,
    1,
    %(lesson_name)s,
    %(lesson_json)s,
    'published',
    true,
    NOW()
);
