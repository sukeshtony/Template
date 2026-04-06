-- Module 6: Poems - Grade 3
-- 20 Lessons aligned to NY Next Generation ELA Standards

-- Lesson 1: A Happy Day
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Happy Day', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The sun is bright and all feels right,
I smile and play throughout the day,
good things come when skies stay light.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Happy Day',
    '{"lesson_name": "A Happy Day", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The sun is bright and all feels right,\nI smile and play throughout the day,\ngood things come when skies stay light."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: Try Again
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Try Again', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I made a mistake, but that''s okay,
I''ll learn something new along the way,
mistakes are how we grow each day.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Try Again',
    '{"lesson_name": "Try Again", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I made a mistake, but that''s okay,\nI''ll learn something new along the way,\nmistakes are how we grow each day."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Listening Well
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening Well', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When someone talks, I stop and hear,
I keep my eyes on what is near,
good listening makes my thinking clear.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening Well',
    '{"lesson_name": "Listening Well", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "When someone talks, I stop and hear,\nI keep my eyes on what is near,\ngood listening makes my thinking clear."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: Helping Out
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Helping Out', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When help is near, I have no fear,
my friends are kind throughout the year,
together we make the path more clear.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping Out',
    '{"lesson_name": "Helping Out", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "When help is near, I have no fear,\nmy friends are kind throughout the year,\ntogether we make the path more clear."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: Be Brave
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Be Brave', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/56.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'It might feel hard, it might feel new,
but being brave means pushing through,
the best things wait on the other side of you.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Be Brave',
    '{"lesson_name": "Be Brave", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "It might feel hard, it might feel new,\nbut being brave means pushing through,\nthe best things wait on the other side of you."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: Morning Ready
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Morning Ready', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I pack my bag and tie my shoe,
I''m set to learn the whole day through,
a ready start makes everything feel new.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Morning Ready',
    '{"lesson_name": "Morning Ready", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I pack my bag and tie my shoe,\nI''m set to learn the whole day through,\na ready start makes everything feel new."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: Keep Going
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Keep Going', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The first try''s hard, the second less,
by try number three I feel success,
effort is the way I do my best.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Keep Going',
    '{"lesson_name": "Keep Going", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The first try''s hard, the second less,\nby try number three I feel success,\neffort is the way I do my best."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Words I Choose
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Words I Choose', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The words I use can help or sting,
I choose the kind ones full of caring,
good words are the best gift I can bring.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Words I Choose',
    '{"lesson_name": "Words I Choose", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The words I use can help or sting,\nI choose the kind ones full of caring,\ngood words are the best gift I can bring."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: Sharing Space
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing Space', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The room is ours, not just for me,
when we share space we all feel free,
together is the best way we can be.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing Space',
    '{"lesson_name": "Sharing Space", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The room is ours, not just for me,\nwhen we share space we all feel free,\ntogether is the best way we can be."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: Growing Strong
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Growing Strong', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I try and try and reach up high,
my effort shows as days go by,
and what I learn teaches me to fly.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growing Strong',
    '{"lesson_name": "Growing Strong", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I try and try and reach up high,\nmy effort shows as days go by,\nand what I learn teaches me to fly."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: A Good Friend
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Good Friend', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'A friend is someone who listens well,
who keeps your secret and helps you tell,
a good friend breaks the lonely spell.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Good Friend',
    '{"lesson_name": "A Good Friend", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "A friend is someone who listens well,\nwho keeps your secret and helps you tell,\na good friend breaks the lonely spell."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: Raise Your Hand
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Raise Your Hand', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When I don''t know, I raise my hand,
a question asked helps me understand,
that''s how I learn and find my land.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Raise Your Hand',
    '{"lesson_name": "Raise Your Hand", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "When I don''t know, I raise my hand,\na question asked helps me understand,\nthat''s how I learn and find my land."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: Wait Your Turn
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Wait Your Turn', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/91.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'The room gets loud but I stay still,
I wait my turn and hold my will,
patience is a learnable skill.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Wait Your Turn',
    '{"lesson_name": "Wait Your Turn", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "The room gets loud but I stay still,\nI wait my turn and hold my will,\npatience is a learnable skill."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: Think Before You Speak
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Think Before You Speak', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'Before I speak I pause and think,
are these words kind or will they sink,
I choose the ones that help us link.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Think Before You Speak',
    '{"lesson_name": "Think Before You Speak", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "Before I speak I pause and think,\nare these words kind or will they sink,\nI choose the ones that help us link."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: Say Sorry
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Say Sorry', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'It takes some strength to say I''m wrong,
but sorry spoken makes the bond more strong,
a small word helps us get along.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Say Sorry',
    '{"lesson_name": "Say Sorry", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "It takes some strength to say I''m wrong,\nbut sorry spoken makes the bond more strong,\na small word helps us get along."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: What I Know Now
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'What I Know Now', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I didn''t know this a month before,
I practiced hard and now know more,
learning always opens up a door.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What I Know Now',
    '{"lesson_name": "What I Know Now", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I didn''t know this a month before,\nI practiced hard and now know more,\nlearning always opens up a door."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: Better Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Better Together', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When I pull my weight and you pull yours,
we carry the load and open doors,
a team can do much more than one restores.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Better Together',
    '{"lesson_name": "Better Together", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "When I pull my weight and you pull yours,\nwe carry the load and open doors,\na team can do much more than one restores."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: I Notice You
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'I Notice You', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I saw you sitting all alone today,
I smiled and asked if you could play,
a small hello can change someone''s whole day.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'I Notice You',
    '{"lesson_name": "I Notice You", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I saw you sitting all alone today,\nI smiled and asked if you could play,\na small hello can change someone''s whole day."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: Calm Is a Choice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm Is a Choice', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'When something goes wrong I feel the heat,
but I can breathe and slow my heartbeat,
then face the problem, calm and neat.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm Is a Choice',
    '{"lesson_name": "Calm Is a Choice", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "When something goes wrong I feel the heat,\nbut I can breathe and slow my heartbeat,\nthen face the problem, calm and neat."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: I Belong Here
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'I Belong Here', 'Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.',
    '0a1c0321-81a1-465f-a8d1-11beec18c591', 'EASY',
    'Vocal Variety Emotion', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'The sun paints gold across the sky,
Birds take flight and breezes sigh.
Leaves that whisper, rivers that run—
Nature’s poem has just begun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'assigned_text', 'I walk in the room and find my place,
I bring my voice into this space,
and know I''m welcome here with grace.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'I Belong Here',
    '{"lesson_name": "I Belong Here", "lesson_description": "Read the poem aloud clearly. Pay attention to rhythm, pauses, and expression. Try to read smoothly and with confidence.", "training_module_id": "0a1c0321-81a1-465f-a8d1-11beec18c591", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Vocal Variety Emotion", "contents": [{"content_key": "example", "content_value": "The sun paints gold across the sky,\nBirds take flight and breezes sigh.\nLeaves that whisper, rivers that run\u2014\nNature\u2019s poem has just begun."}, {"content_key": "assigned_text", "content_value": "I walk in the room and find my place,\nI bring my voice into this space,\nand know I''m welcome here with grace."}]}',
    'published', true, NOW()
  );
END $$;
