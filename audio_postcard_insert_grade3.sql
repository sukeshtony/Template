-- =====================================================
-- AUDIO POSTCARD (Personal Expression) — 20 lessons
-- Grade 3, Difficulty: EASY
-- Run this entire script in a single pgAdmin query window
-- =====================================================

-- Lesson 1: A Morning Stretch Before School
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Morning Stretch Before School', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share how you started your morning with a stretch or movement.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you did and how it made your body feel.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Morning Stretch Before School',
    '{"lesson_name": "A Morning Stretch Before School", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share how you started your morning with a stretch or movement."}, {"content_key": "instructions", "content_value": "Describe what you did and how it made your body feel."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: My Favorite Snack Right Now
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'My Favorite Snack Right Now', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/31.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a snack you really enjoy and what makes it special to you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Include what it looks like, tastes like, and how it makes you feel.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Favorite Snack Right Now',
    '{"lesson_name": "My Favorite Snack Right Now", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a snack you really enjoy and what makes it special to you."}, {"content_key": "instructions", "content_value": "Include what it looks like, tastes like, and how it makes you feel."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Something I See Right Now
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Something I See Right Now', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe one thing you can see clearly from where you are sitting.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Tell what it is, what color and shape it has, and why you noticed it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I See Right Now',
    '{"lesson_name": "Something I See Right Now", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe one thing you can see clearly from where you are sitting."}, {"content_key": "instructions", "content_value": "Tell what it is, what color and shape it has, and why you noticed it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: Playground Friends Playing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Playground Friends Playing', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/32.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share a fun moment you had at recess or during play time.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe who you played with and what you did.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Playground Friends Playing',
    '{"lesson_name": "Playground Friends Playing", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share a fun moment you had at recess or during play time."}, {"content_key": "instructions", "content_value": "Describe who you played with and what you did."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: A Sound That Gets My Attention
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Sound That Gets My Attention', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a sound you notice often and how it makes you feel.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what the sound is, when you hear it, and what you think of it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Sound That Gets My Attention',
    '{"lesson_name": "A Sound That Gets My Attention", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a sound you notice often and how it makes you feel."}, {"content_key": "instructions", "content_value": "Explain what the sound is, when you hear it, and what you think of it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: My Walk to School
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'My Walk to School', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/66.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe your walk, ride, or trip to school this morning.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Share one thing you saw, heard, or noticed along the way.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Walk to School',
    '{"lesson_name": "My Walk to School", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe your walk, ride, or trip to school this morning."}, {"content_key": "instructions", "content_value": "Share one thing you saw, heard, or noticed along the way."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: A Color That Makes Me Happy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Color That Makes Me Happy', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/41.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share a color that makes you feel good and explain why.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe where you see this color and what it reminds you of.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Color That Makes Me Happy',
    '{"lesson_name": "A Color That Makes Me Happy", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share a color that makes you feel good and explain why."}, {"content_key": "instructions", "content_value": "Describe where you see this color and what it reminds you of."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Something I Made This Week
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Something I Made This Week', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/60.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe something you made or built recently — at school or at home.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what it is, how you made it, and how you felt when it was done.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something I Made This Week',
    '{"lesson_name": "Something I Made This Week", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe something you made or built recently \u2014 at school or at home."}, {"content_key": "instructions", "content_value": "Explain what it is, how you made it, and how you felt when it was done."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: The Best Part of Lunch Today
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Best Part of Lunch Today', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share the best moment or thing from your lunch break today.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what happened and why it stood out to you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Best Part of Lunch Today',
    '{"lesson_name": "The Best Part of Lunch Today", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share the best moment or thing from your lunch break today."}, {"content_key": "instructions", "content_value": "Describe what happened and why it stood out to you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: A Snack I Like
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Snack I Like', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share a favorite snack and why you like it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe the taste, texture, and how it makes you feel after eating it.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Snack I Like',
    '{"lesson_name": "A Snack I Like", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share a favorite snack and why you like it."}, {"content_key": "instructions", "content_value": "Describe the taste, texture, and how it makes you feel after eating it."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: School vs. Weekend Mornings
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School vs. Weekend Mornings', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/44.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Compare how your mornings feel on school days versus weekends.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe one difference and one thing that stays the same.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School vs. Weekend Mornings',
    '{"lesson_name": "School vs. Weekend Mornings", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Compare how your mornings feel on school days versus weekends."}, {"content_key": "instructions", "content_value": "Describe one difference and one thing that stays the same."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: Inside vs. Outside Recess
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Inside vs. Outside Recess', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Compare what recess is like outside versus when you stay inside.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what you enjoy about each and which you prefer.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Inside vs. Outside Recess',
    '{"lesson_name": "Inside vs. Outside Recess", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Compare what recess is like outside versus when you stay inside."}, {"content_key": "instructions", "content_value": "Describe what you enjoy about each and which you prefer."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: Two Things I Love About My Classroom
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Two Things I Love About My Classroom', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share two specific things you love about being in your classroom.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe each thing and explain what makes it special to you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Things I Love About My Classroom',
    '{"lesson_name": "Two Things I Love About My Classroom", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share two specific things you love about being in your classroom."}, {"content_key": "instructions", "content_value": "Describe each thing and explain what makes it special to you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: Before and After a Hard Task
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Before and After a Hard Task', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe how you felt before and after completing something challenging.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Name the task and compare your feelings at the start and end.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Before and After a Hard Task',
    '{"lesson_name": "Before and After a Hard Task", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe how you felt before and after completing something challenging."}, {"content_key": "instructions", "content_value": "Name the task and compare your feelings at the start and end."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: Two Places I Feel Calm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Two Places I Feel Calm', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/79.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe two places where you feel calm and relaxed.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Explain what each place looks or feels like and why it brings you peace.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Two Places I Feel Calm',
    '{"lesson_name": "Two Places I Feel Calm", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe two places where you feel calm and relaxed."}, {"content_key": "instructions", "content_value": "Explain what each place looks or feels like and why it brings you peace."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: A Moment That Made Me Stop and Think
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Moment That Made Me Stop and Think', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/62.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe a moment this week that surprised you or made you pause.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Share what happened and what thought it gave you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Moment That Made Me Stop and Think',
    '{"lesson_name": "A Moment That Made Me Stop and Think", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe a moment this week that surprised you or made you pause."}, {"content_key": "instructions", "content_value": "Share what happened and what thought it gave you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: Something Old That Feels New Again
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Something Old That Feels New Again', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/26.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share something you used to like that you have come back to enjoying.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe what it is and why it feels fresh to you now.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Something Old That Feels New Again',
    '{"lesson_name": "Something Old That Feels New Again", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share something you used to like that you have come back to enjoying."}, {"content_key": "instructions", "content_value": "Describe what it is and why it feels fresh to you now."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: A Small Thing I Am Grateful For Today
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Small Thing I Am Grateful For Today', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/58.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Share one small, specific thing you are grateful for today.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Describe it clearly and explain why it matters to you.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Small Thing I Am Grateful For Today',
    '{"lesson_name": "A Small Thing I Am Grateful For Today", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Share one small, specific thing you are grateful for today."}, {"content_key": "instructions", "content_value": "Describe it clearly and explain why it matters to you."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: The Best Conversation I Had Today
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Best Conversation I Had Today', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/11.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Describe the best conversation or exchange you had today at school.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Share what was said and what made it meaningful or fun.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Best Conversation I Had Today',
    '{"lesson_name": "The Best Conversation I Had Today", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Describe the best conversation or exchange you had today at school."}, {"content_key": "instructions", "content_value": "Share what was said and what made it meaningful or fun."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: A Day in My Shoes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Day in My Shoes', 'Audio Postcard for 3rd grade',
    'e39352c6-f890-464f-be63-557fe374362a', 'EASY',
    'Personal Expression', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Take a listener through one small but memorable slice of your day.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'instructions', 'Pick one moment, describe it with detail, and share what it taught you or made you feel.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Visiting a new college campus', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_instruction', 'Describe the campus layout, interesting facilities, and your feelings about the environment.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Day in My Shoes',
    '{"lesson_name": "A Day in My Shoes", "lesson_description": "Audio Postcard for 3rd grade", "training_module_id": "e39352c6-f890-464f-be63-557fe374362a", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Personal Expression", "contents": [{"content_key": "topic", "content_value": "Take a listener through one small but memorable slice of your day."}, {"content_key": "instructions", "content_value": "Pick one moment, describe it with detail, and share what it taught you or made you feel."}, {"content_key": "example_topic", "content_value": "Visiting a new college campus"}, {"content_key": "example_instruction", "content_value": "Describe the campus layout, interesting facilities, and your feelings about the environment."}, {"content_key": "example_content", "content_value": "Hello! I recently visited a college campus that left a strong impression on me. The sprawling green quads, modern labs, and historic libraries created a unique blend of tradition and innovation. I felt inspired and excited about the possibility of studying there, and I can''t wait to share more details with you!"}]}',
    'published', true, NOW()
  );
END $$;
