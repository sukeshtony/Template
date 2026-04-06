INSERT INTO bantrly.lesson (
    lesson_id,
    lesson_name,
    lesson_description,
    training_module_id,
    difficulty_level,
    lesson_type,
    created_on,
    created_by,
    created_by_role,
    is_deleted,
    is_assessment,
    grade,
    section,
    lesson_image_url
) VALUES (
    gen_random_uuid(),
    %(lesson_name)s,
    %(lesson_description)s,
    'e39352c6-f890-464f-be63-557fe374362a',
    %(difficulty)s,
    'Personal Expression',
    NOW(),
    'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN',
    false,
    false,
    %(grade)s,
    NULL,
    NULL
)
RETURNING lesson_id;
