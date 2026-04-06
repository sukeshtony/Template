-- =====================================================
-- STORY BUILDING (Story Building with Keywords) — 20 lessons
-- Run this entire script in a single pgAdmin query window
-- =====================================================

-- Lesson 1: The Broken Umbrella
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Broken Umbrella', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'umbrella, rain, share, grateful, kind', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Broken Umbrella',
    '{"lesson_name": "The Broken Umbrella", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "umbrella, rain, share, grateful, kind"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: The Lost Glove
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Lost Glove', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'glove, cold, search, found, relieved', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Lost Glove',
    '{"lesson_name": "The Lost Glove", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "glove, cold, search, found, relieved"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: The Library Return
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Library Return', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'library, return, overdue, hurry, responsible', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Library Return',
    '{"lesson_name": "The Library Return", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "library, return, overdue, hurry, responsible"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: The Lunch Trade
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Lunch Trade', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunch, trade, agree, fair, satisfied', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Lunch Trade',
    '{"lesson_name": "The Lunch Trade", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunch, trade, agree, fair, satisfied"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: Carrying the Supplies
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Carrying the Supplies', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'supplies, heavy, offer, teamwork, easier', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Carrying the Supplies',
    '{"lesson_name": "Carrying the Supplies", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "supplies, heavy, offer, teamwork, easier"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: Trying the New Lunch
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Trying the New Lunch', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cafeteria, new, nervous, taste, brave', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trying the New Lunch',
    '{"lesson_name": "Trying the New Lunch", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cafeteria, new, nervous, taste, brave"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: The Quiet Partner
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Quiet Partner', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner, quiet, listen, idea, respected', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Quiet Partner',
    '{"lesson_name": "The Quiet Partner", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner, quiet, listen, idea, respected"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: The Spilled Paint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Spilled Paint', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'paint, spill, accident, clean, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Spilled Paint',
    '{"lesson_name": "The Spilled Paint", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "paint, spill, accident, clean, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: The Forgotten Line
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Forgotten Line', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'play, forgot, freeze, breathe, recover', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Forgotten Line',
    '{"lesson_name": "The Forgotten Line", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "play, forgot, freeze, breathe, recover"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: The Loud Argument
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Loud Argument', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'argument, loud, pause, calm, solution', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Loud Argument',
    '{"lesson_name": "The Loud Argument", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "argument, loud, pause, calm, solution"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: The Math Partner Mix-Up
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Math Partner Mix-Up', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mistake, confused, explain, patient, understood', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Math Partner Mix-Up',
    '{"lesson_name": "The Math Partner Mix-Up", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mistake, confused, explain, patient, understood"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: The New Student's First Day
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The New Student''s First Day', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'welcome, nervous, smile, belong, comfortable', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (  
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The New Student''s First Day',
    '{"lesson_name": "The New Student''s First Day", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "welcome, nervous, smile, belong, comfortable"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: The Skipped Step
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Skipped Step', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'directions, skip, confused, reread, careful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Skipped Step',
    '{"lesson_name": "The Skipped Step", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "directions, skip, confused, reread, careful"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: The Noisy Lunchroom
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Noisy Lunchroom', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'noisy, focus, distracted, moved, peaceful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Noisy Lunchroom',
    '{"lesson_name": "The Noisy Lunchroom", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "noisy, focus, distracted, moved, peaceful"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: The Drawing Critique
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Drawing Critique', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'drawing, feedback, improve, honest, grateful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Drawing Critique',
    '{"lesson_name": "The Drawing Critique", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "drawing, feedback, improve, honest, grateful"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: The Long Hallway Walk
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Long Hallway Walk', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'line, rush, crowded, patient, orderly', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Long Hallway Walk',
    '{"lesson_name": "The Long Hallway Walk", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "line, rush, crowded, patient, orderly"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: The Group Disagreement
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Group Disagreement', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'project, opinions, disagree, vote, decided', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Group Disagreement',
    '{"lesson_name": "The Group Disagreement", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "project, opinions, disagree, vote, decided"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: The Long Wait
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Long Wait', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'wait, appointment, bored, distracted, patient', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Long Wait',
    '{"lesson_name": "The Long Wait", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "wait, appointment, bored, distracted, patient"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: The Hard Compliment
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Hard Compliment', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'compliment, jealous, generous, proud, effort', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Hard Compliment',
    '{"lesson_name": "The Hard Compliment", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "compliment, jealous, generous, proud, effort"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: The Group That Kept Going
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Group That Kept Going', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'tired, frustration, encourage, finish, proud', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Group That Kept Going',
    '{"lesson_name": "The Group That Kept Going", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "tired, frustration, encourage, finish, proud"}]}',
    'published', true, NOW()
  );
END $$;
