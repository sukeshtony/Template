-- Module 5: Tongue Twisters - Grade 3
-- 20 Lessons generated in simple query format (matching Poem and Reading style)
-- Includes lesson_version_new inserts as requested.
-- Training Module: Pronunciation Diction (cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b)

-- Lesson 1: Bright Bees Buzz
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Bright Bees Buzz', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/1.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Bright bees buzz by blue blossoms.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Bright Bees Buzz',
    '{"lesson_name": "Bright Bees Buzz", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Bright bees buzz by blue blossoms."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: Tiny Turtles Turn
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Tiny Turtles Turn', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/2.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Tiny turtles turn toward tall trees.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tiny Turtles Turn',
    '{"lesson_name": "Tiny Turtles Turn", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Tiny turtles turn toward tall trees."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Silly Seals Slide
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Silly Seals Slide', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Silly seals slide on snowy slopes.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Silly Seals Slide',
    '{"lesson_name": "Silly Seals Slide", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Silly seals slide on snowy slopes."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: Lovely Lions Lie
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Lovely Lions Lie', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/4.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Lovely lions lie on long leaves.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Lovely Lions Lie',
    '{"lesson_name": "Lovely Lions Lie", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Lovely lions lie on long leaves."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: Fluffy Frogs Flip
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fluffy Frogs Flip', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/5.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Fluffy frogs flip and fly forward.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fluffy Frogs Flip',
    '{"lesson_name": "Fluffy Frogs Flip", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Fluffy frogs flip and fly forward."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: Giggling Geese Gather
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Giggling Geese Gather', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Giggling geese gather golden grain gladly.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Giggling Geese Gather',
    '{"lesson_name": "Giggling Geese Gather", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Giggling geese gather golden grain gladly."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: Clever Cats Climb
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clever Cats Climb', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/7.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Clever cats climb the curvy cottage carefully.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clever Cats Climb',
    '{"lesson_name": "Clever Cats Climb", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Clever cats climb the curvy cottage carefully."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Dandy Ducks Dive
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Dandy Ducks Dive', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Dandy ducks dive down into dark ditches.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dandy Ducks Dive',
    '{"lesson_name": "Dandy Ducks Dive", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Dandy ducks dive down into dark ditches."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: Merry Mice Move
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Merry Mice Move', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/9.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Merry mice move through misty mountain meadows.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Merry Mice Move',
    '{"lesson_name": "Merry Mice Move", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Merry mice move through misty mountain meadows."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: Peaceful Puppies Play
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Peaceful Puppies Play', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Peaceful puppies play in pretty purple parks.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Peaceful Puppies Play',
    '{"lesson_name": "Peaceful Puppies Play", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Peaceful puppies play in pretty purple parks."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: Running Rabbits Race
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Running Rabbits Race', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Running rabbits race around round rocky roads.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Running Rabbits Race',
    '{"lesson_name": "Running Rabbits Race", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Running rabbits race around round rocky roads."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: Waddling Walruses Wave
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Waddling Walruses Wave', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Waddling walruses wave at wide warm waters.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Waddling Walruses Wave',
    '{"lesson_name": "Waddling Walruses Wave", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Waddling walruses wave at wide warm waters."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: Happy Hippos Hop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Happy Hippos Hop', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Happy hippos hop on hot hilly highways.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Happy Hippos Hop',
    '{"lesson_name": "Happy Hippos Hop", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Happy hippos hop on hot hilly highways."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: Noisy Nightingales Nap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Noisy Nightingales Nap', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Noisy nightingales nap near narrow nesting nooks.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Noisy Nightingales Nap',
    '{"lesson_name": "Noisy Nightingales Nap", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Noisy nightingales nap near narrow nesting nooks."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: Kind Koalas Keep
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Kind Koalas Keep', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Kind koalas keep cool by calm creeks.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kind Koalas Keep',
    '{"lesson_name": "Kind Koalas Keep", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Kind koalas keep cool by calm creeks."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: Zebras Zigzag Zestfully
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Zebras Zigzag Zestfully', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Zesty zebras zigzag zestfully through zooming zones.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Zebras Zigzag Zestfully',
    '{"lesson_name": "Zebras Zigzag Zestfully", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Zesty zebras zigzag zestfully through zooming zones."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: Violet Vines Vine
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Violet Vines Vine', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Vivid violet vines very visibly veil vast valleys.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Violet Vines Vine',
    '{"lesson_name": "Violet Vines Vine", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Vivid violet vines very visibly veil vast valleys."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: Jumping Jaguars Juggle
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Jumping Jaguars Juggle', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Jolly jaguars juggle jars of jam near jungle jets.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Jumping Jaguars Juggle',
    '{"lesson_name": "Jumping Jaguars Juggle", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Jolly jaguars juggle jars of jam near jungle jets."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: Quick Quails Quietly Quest
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Quick Quails Quietly Quest', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Quick quiet quails quizzically question quirky queens.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Quick Quails Quietly Quest',
    '{"lesson_name": "Quick Quails Quietly Quest", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Quick quiet quails quizzically question quirky queens."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: Shy Ships Shimmer
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Shy Ships Shimmer', 'Tongue Twister Exercise',
    'cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b', 'EASY',
    'Pronunciation Diction', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example', 'She sells seashells by the seashore.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'tongue_twister', 'Shiny shy ships shuffle swiftly past shimmering shores.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shy Ships Shimmer',
    '{"lesson_name": "Shy Ships Shimmer", "lesson_description": "Tongue Twister Exercise", "training_module_id": "cf94d7a5-1b5b-4f1a-8e6c-0e9d8ca3455b", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Pronunciation Diction", "contents": [{"content_key": "example", "content_value": "She sells seashells by the seashore."}, {"content_key": "tongue_twister", "content_value": "Shiny shy ships shuffle swiftly past shimmering shores."}]}',
    'published', true, NOW()
  );
END $$;
