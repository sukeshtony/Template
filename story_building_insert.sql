-- =====================================================
-- STORY BUILDING (Story Building with Keywords) — 360 lessons
-- Run this entire script in a single pgAdmin query window
-- =====================================================

-- Lesson 1: Puppy and the Red Ball
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Puppy and the Red Ball', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'puppy, ball, grass, sun, friend', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Puppy and the Red Ball',
    '{"lesson_name": "Puppy and the Red Ball", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "puppy, ball, grass, sun, friend"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: Flying the Colorful Kite
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Flying the Colorful Kite', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'kite, wind, hill, sister, smile', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Flying the Colorful Kite',
    '{"lesson_name": "Flying the Colorful Kite", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "kite, wind, hill, sister, smile"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Quiet Pond Moment
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Quiet Pond Moment', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'turtle, pond, leaf, breeze, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Quiet Pond Moment',
    '{"lesson_name": "Quiet Pond Moment", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "turtle, pond, leaf, breeze, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: The Apple Basket
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Apple Basket', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'apple, tree, basket, neighbor, help', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Apple Basket',
    '{"lesson_name": "The Apple Basket", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "apple, tree, basket, neighbor, help"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: Rainbow and Puddles
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Rainbow and Puddles', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rainbow, rain, boots, giggle, puddle', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rainbow and Puddles',
    '{"lesson_name": "Rainbow and Puddles", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rainbow, rain, boots, giggle, puddle"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: The Gentle Nest
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Gentle Nest', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bird, nest, branch, careful, gentle', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Gentle Nest',
    '{"lesson_name": "The Gentle Nest", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bird, nest, branch, careful, gentle"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: Shells by the Shore
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Shells by the Shore', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'beach, shell, wave, cousin, explore', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shells by the Shore',
    '{"lesson_name": "Shells by the Shore", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "beach, shell, wave, cousin, explore"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Lantern on the Path
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Lantern on the Path', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lantern, night, path, family, safe', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Lantern on the Path',
    '{"lesson_name": "Lantern on the Path", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lantern, night, path, family, safe"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: Sharing the Paint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing the Paint', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'paint, brush, colors, friend, share', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing the Paint',
    '{"lesson_name": "Sharing the Paint", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "paint, brush, colors, friend, share"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: Waiting for the Sprout
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Waiting for the Sprout', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'garden, carrot, water, grow, patient', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Waiting for the Sprout',
    '{"lesson_name": "Waiting for the Sprout", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "garden, carrot, water, grow, patient"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: The Shared Acorn
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Shared Acorn', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'squirrel, acorn, branch, share, forest', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Shared Acorn',
    '{"lesson_name": "The Shared Acorn", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "squirrel, acorn, branch, share, forest"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: Paddling Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Paddling Together', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'canoe, lake, paddle, breeze, teamwork', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Paddling Together',
    '{"lesson_name": "Paddling Together", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "canoe, lake, paddle, breeze, teamwork"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: Dancing at the Festival
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Dancing at the Festival', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'festival, drums, lights, dance, joy', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dancing at the Festival',
    '{"lesson_name": "Dancing at the Festival", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "festival, drums, lights, dance, joy"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: Warm Mittens, Kind Friend
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Warm Mittens, Kind Friend', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'snow, mittens, trail, friend, support', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Warm Mittens, Kind Friend',
    '{"lesson_name": "Warm Mittens, Kind Friend", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "snow, mittens, trail, friend, support"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: Lantern on the Lake
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Lantern on the Lake', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'boat, lantern, night, explore, courage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Lantern on the Lake',
    '{"lesson_name": "Lantern on the Lake", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "boat, lantern, night, explore, courage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: Helping at the Market
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Helping at the Market', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'market, fruit, basket, kindness, neighbor', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping at the Market',
    '{"lesson_name": "Helping at the Market", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "market, fruit, basket, kindness, neighbor"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: Picnic on the Hill
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Picnic on the Hill', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'hillside, picnic, blanket, laughter, family', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Picnic on the Hill',
    '{"lesson_name": "Picnic on the Hill", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "hillside, picnic, blanket, laughter, family"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: Promise to Protect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Promise to Protect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'turtle, coral, ocean, gentle, protect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Promise to Protect',
    '{"lesson_name": "Promise to Protect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "turtle, coral, ocean, gentle, protect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: The Village Drum
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Village Drum', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'village, drum, message, mountain, gather', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Village Drum',
    '{"lesson_name": "The Village Drum", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "village, drum, message, mountain, gather"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: Watching the Butterfly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Watching the Butterfly', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'garden, butterfly, sunlight, patient, observe', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Watching the Butterfly',
    '{"lesson_name": "Watching the Butterfly", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "garden, butterfly, sunlight, patient, observe"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 21: The Wise Guide
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Wise Guide', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'desert, camel, path, heat, guide', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Wise Guide',
    '{"lesson_name": "The Wise Guide", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "desert, camel, path, heat, guide"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 22: Choosing to Be Brave
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing to Be Brave', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'island, canoe, sunrise, decision, brave', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing to Be Brave',
    '{"lesson_name": "Choosing to Be Brave", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "island, canoe, sunrise, decision, brave"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 23: Lanterns in Harmony
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Lanterns in Harmony', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'festival, lanterns, parade, harmony, share', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Lanterns in Harmony',
    '{"lesson_name": "Lanterns in Harmony", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "festival, lanterns, parade, harmony, share"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 24: Finding the Right Path
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding the Right Path', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mountain, stream, lost, calm, thinking', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding the Right Path',
    '{"lesson_name": "Finding the Right Path", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mountain, stream, lost, calm, thinking"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 25: The Storyteller’s Wisdom
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Storyteller’s Wisdom', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'village, storyteller, memory, lesson, wisdom', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Storyteller’s Wisdom',
    '{"lesson_name": "The Storyteller\u2019s Wisdom", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "village, storyteller, memory, lesson, wisdom"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 26: Light in the Storm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Light in the Storm', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'ocean, lighthouse, storm, signal, safety', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Light in the Storm',
    '{"lesson_name": "Light in the Storm", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "ocean, lighthouse, storm, signal, safety"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 27: Breathing with the Flute
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Breathing with the Flute', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'meadow, flute, calm, breathing, peace', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Breathing with the Flute',
    '{"lesson_name": "Breathing with the Flute", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "meadow, flute, calm, breathing, peace"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 28: Walking with Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Walking with Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'forest, footprints, explore, respect, nature', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Walking with Respect',
    '{"lesson_name": "Walking with Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "forest, footprints, explore, respect, nature"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 29: The Patient Net
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Patient Net', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'harbor, fishermen, net, teamwork, patience', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Patient Net',
    '{"lesson_name": "The Patient Net", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "harbor, fishermen, net, teamwork, patience"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 30: The Temple Bell
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Temple Bell', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'temple, bell, tradition, community, meaning', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Temple Bell',
    '{"lesson_name": "The Temple Bell", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "1", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "temple, bell, tradition, community, meaning"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 31: Gentle Curiosity at Aquarium
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Gentle Curiosity at Aquarium', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'turtle, aquarium, wave, curious, gentle', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Gentle Curiosity at Aquarium',
    '{"lesson_name": "Gentle Curiosity at Aquarium", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "turtle, aquarium, wave, curious, gentle"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 32: Returning the Scarf
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Returning the Scarf', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'scarf, windy, lost, notice, return', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Returning the Scarf',
    '{"lesson_name": "Returning the Scarf", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "scarf, windy, lost, notice, return"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 33: Sharing the Chalk
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing the Chalk', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'chalk, sidewalk, share, colors, smile', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing the Chalk',
    '{"lesson_name": "Sharing the Chalk", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "chalk, sidewalk, share, colors, smile"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 34: A Fair Trade
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Fair Trade', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunch, cookie, trade, fair, choice', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Fair Trade',
    '{"lesson_name": "A Fair Trade", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunch, cookie, trade, fair, choice"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 35: Finding the Missing Piece
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding the Missing Piece', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'puzzle, missing, search, teamwork, found', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding the Missing Piece',
    '{"lesson_name": "Finding the Missing Piece", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "puzzle, missing, search, teamwork, found"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 36: Sharing an Umbrella
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing an Umbrella', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bus-stop, umbrella, rain, offer, thankful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing an Umbrella',
    '{"lesson_name": "Sharing an Umbrella", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bus-stop, umbrella, rain, offer, thankful"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 37: Try Again, Pass Better
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Try Again, Pass Better', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'soccer, pass, mistake, encourage, try', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Try Again, Pass Better',
    '{"lesson_name": "Try Again, Pass Better", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "soccer, pass, mistake, encourage, try"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 38: The Quiet Signal
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Quiet Signal', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'classroom, noise, signal, quiet, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Quiet Signal',
    '{"lesson_name": "The Quiet Signal", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "classroom, noise, signal, quiet, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 39: Breathing on Stage
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Breathing on Stage', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'stage, poem, nervous, breathe, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Breathing on Stage',
    '{"lesson_name": "Breathing on Stage", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "stage, poem, nervous, breathe, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 40: Fixing the Mistake
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fixing the Mistake', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'art, mistake, erase, redo, confidence', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fixing the Mistake',
    '{"lesson_name": "Fixing the Mistake", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "art, mistake, erase, redo, confidence"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 41: Waiting with a Smile
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Waiting with a Smile', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bakery, line, wait, polite, smile', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Waiting with a Smile',
    '{"lesson_name": "Waiting with a Smile", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bakery, line, wait, polite, smile"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 42: Saying Hello First
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Saying Hello First', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'hallway, new-student, hello, brave, friendly', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Saying Hello First',
    '{"lesson_name": "Saying Hello First", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "hallway, new-student, hello, brave, friendly"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 43: Borrow and Return
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Borrow and Return', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'crayons, borrow, ask, return, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Borrow and Return',
    '{"lesson_name": "Borrow and Return", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "crayons, borrow, ask, return, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 44: Growing a Seed
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Growing a Seed', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'garden, seed, water, careful, grow', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growing a Seed',
    '{"lesson_name": "Growing a Seed", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "garden, seed, water, careful, grow"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 45: Solving Game Rules
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Solving Game Rules', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'recess, rules, game, disagree, solve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Solving Game Rules',
    '{"lesson_name": "Solving Game Rules", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "recess, rules, game, disagree, solve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 46: Cleaning Up Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Cleaning Up Together', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cafeteria, spill, cleanup, help, relieved', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cleaning Up Together',
    '{"lesson_name": "Cleaning Up Together", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cafeteria, spill, cleanup, help, relieved"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 47: Listening to the Beat
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening to the Beat', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'music, volume, reminder, listen, adjust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening to the Beat',
    '{"lesson_name": "Listening to the Beat", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "music, volume, reminder, listen, adjust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 48: Quiet in the Library
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Quiet in the Library', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'library, whisper, partner, focus, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Quiet in the Library',
    '{"lesson_name": "Quiet in the Library", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "library, whisper, partner, focus, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 49: Try Again Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Try Again Together', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'soccer, miss, teammate, encourage, try', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Try Again Together',
    '{"lesson_name": "Try Again Together", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "soccer, miss, teammate, encourage, try"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 50: Pause and Restart
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pause and Restart', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'stage, lines, forget, pause, restart', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pause and Restart',
    '{"lesson_name": "Pause and Restart", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "stage, lines, forget, pause, restart"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 51: Asking for Help
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Asking for Help', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'backpack, lost, ask, adult, safe', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Asking for Help',
    '{"lesson_name": "Asking for Help", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "backpack, lost, ask, adult, safe"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 52: Rebuild After the Crash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Rebuild After the Crash', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'blocks, crash, upset, breathe, rebuild', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rebuild After the Crash',
    '{"lesson_name": "Rebuild After the Crash", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "blocks, crash, upset, breathe, rebuild"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 53: Taking Fair Turns
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Taking Fair Turns', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'toy, turns, timer, fairness, agree', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Taking Fair Turns',
    '{"lesson_name": "Taking Fair Turns", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "toy, turns, timer, fairness, agree"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 54: Talking About Fear
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Talking About Fear', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bedtime, shadow, scared, talk, comfort', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Talking About Fear',
    '{"lesson_name": "Talking About Fear", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bedtime, shadow, scared, talk, comfort"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 55: Fixing the Drawing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fixing the Drawing', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'drawing, rip, sad, fix, proud', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fixing the Drawing',
    '{"lesson_name": "Fixing the Drawing", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "drawing, rip, sad, fix, proud"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 56: Making Room for All
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making Room for All', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-work, left-out, notice, invite, include', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Room for All',
    '{"lesson_name": "Making Room for All", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-work, left-out, notice, invite, include"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 57: Sharing the Last Snack
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing the Last Snack', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'snack, last-one, share, choice, kind', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing the Last Snack',
    '{"lesson_name": "Sharing the Last Snack", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "snack, last-one, share, choice, kind"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 58: Using a Quiet Signal
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using a Quiet Signal', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'classroom, loud, headache, signal, quieter', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using a Quiet Signal',
    '{"lesson_name": "Using a Quiet Signal", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "classroom, loud, headache, signal, quieter"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 59: Trying a New Strategy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Trying a New Strategy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'reading, hard-word, stuck, strategy, succeed', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trying a New Strategy',
    '{"lesson_name": "Trying a New Strategy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "reading, hard-word, stuck, strategy, succeed"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 60: Brave After a Mistake
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Brave After a Mistake', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'performance, mistake, recover, support, brave', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Brave After a Mistake',
    '{"lesson_name": "Brave After a Mistake", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "2", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "performance, mistake, recover, support, brave"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 61: Delivering the Lost Letter
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Delivering the Lost Letter', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mailbox, letter, neighbor, deliver, kind', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Delivering the Lost Letter',
    '{"lesson_name": "Delivering the Lost Letter", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mailbox, letter, neighbor, deliver, kind"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 62: Sharing the Marker
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing the Marker', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'classroom, marker, share, color, teamwork', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing the Marker',
    '{"lesson_name": "Sharing the Marker", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "classroom, marker, share, color, teamwork"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 63: Waiting for the Swing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Waiting for the Swing', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'playground, swing, wait, timer, patient', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Waiting for the Swing',
    '{"lesson_name": "Waiting for the Swing", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "playground, swing, wait, timer, patient"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 64: Practicing Team Passes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Practicing Team Passes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'soccer, pass, teamwork, cheer, practice', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Practicing Team Passes',
    '{"lesson_name": "Practicing Team Passes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "soccer, pass, teamwork, cheer, practice"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 65: Cleaning Up the Spill
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Cleaning Up the Spill', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'art, glue, spill, clean, responsible', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cleaning Up the Spill',
    '{"lesson_name": "Cleaning Up the Spill", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "art, glue, spill, clean, responsible"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 66: Offering a Bus Seat
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Offering a Bus Seat', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bus, crowded, seat, offer, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Offering a Bus Seat',
    '{"lesson_name": "Offering a Bus Seat", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bus, crowded, seat, offer, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 67: Pausing to Talk It Out
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pausing to Talk It Out', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'recess, argument, pause, calm, solve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pausing to Talk It Out',
    '{"lesson_name": "Pausing to Talk It Out", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "recess, argument, pause, calm, solve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 68: Using Quiet Voices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using Quiet Voices', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'library, book, quiet, focus, courtesy', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using Quiet Voices',
    '{"lesson_name": "Using Quiet Voices", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "library, book, quiet, focus, courtesy"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 69: Planning the Group Project
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Planning the Group Project', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group, project, roles, plan, cooperate', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning the Group Project',
    '{"lesson_name": "Planning the Group Project", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group, project, roles, plan, cooperate"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 70: Breathing Before Speaking
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Breathing Before Speaking', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'stage, speech, nervous, breathe, confident', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Breathing Before Speaking',
    '{"lesson_name": "Breathing Before Speaking", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "stage, speech, nervous, breathe, confident"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 71: Our Team Poster
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Our Team Poster', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'community-center, poster, message, teamwork, proud', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Our Team Poster',
    '{"lesson_name": "Our Team Poster", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "community-center, poster, message, teamwork, proud"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 72: Fixing the Mix-Up
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fixing the Mix-Up', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunchroom, mix-up, apologize, fix, respectful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fixing the Mix-Up',
    '{"lesson_name": "Fixing the Mix-Up", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunchroom, mix-up, apologize, fix, respectful"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 73: Redoing the Experiment
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Redoing the Experiment', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'science, experiment, mistake, redo, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Redoing the Experiment',
    '{"lesson_name": "Redoing the Experiment", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "science, experiment, mistake, redo, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 74: Respecting the Museum
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Respecting the Museum', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'fieldtrip, museum, curious, rule, respectful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Respecting the Museum',
    '{"lesson_name": "Respecting the Museum", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "fieldtrip, museum, curious, rule, respectful"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 75: Inviting a Teammate In
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Inviting a Teammate In', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'playground, teammate, left-out, notice, include', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Inviting a Teammate In',
    '{"lesson_name": "Inviting a Teammate In", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "playground, teammate, left-out, notice, include"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 76: Using the Quiet Signal
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using the Quiet Signal', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'classroom, noise, signal, listen, adjust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using the Quiet Signal',
    '{"lesson_name": "Using the Quiet Signal", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "classroom, noise, signal, listen, adjust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 77: Helping a Reading Partner
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Helping a Reading Partner', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'reading, partner, stumble, support, retry', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping a Reading Partner',
    '{"lesson_name": "Helping a Reading Partner", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "reading, partner, stumble, support, retry"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 78: Welcoming the New Kid
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Welcoming the New Kid', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cafeteria, new-kid, sit, welcome, conversation', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Welcoming the New Kid',
    '{"lesson_name": "Welcoming the New Kid", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cafeteria, new-kid, sit, welcome, conversation"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 79: Giving Kind Feedback
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Giving Kind Feedback', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'art-show, feedback, feelings, kind, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Giving Kind Feedback',
    '{"lesson_name": "Giving Kind Feedback", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "art-show, feedback, feelings, kind, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 80: Bravely Continuing On
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Bravely Continuing On', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, forget, pause, recover, brave', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Bravely Continuing On',
    '{"lesson_name": "Bravely Continuing On", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, forget, pause, recover, brave"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 81: Making a Steady Plan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making a Steady Plan', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'competition, teammate, nervous, plan, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making a Steady Plan',
    '{"lesson_name": "Making a Steady Plan", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "competition, teammate, nervous, plan, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 82: Finding a Fair Compromise
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding a Fair Compromise', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'class-vote, disagree, listen, compromise, fair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding a Fair Compromise',
    '{"lesson_name": "Finding a Fair Compromise", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "class-vote, disagree, listen, compromise, fair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 83: Fixing Hurtful Words
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fixing Hurtful Words', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mistake, rumor, hurt, apologize, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fixing Hurtful Words',
    '{"lesson_name": "Fixing Hurtful Words", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mistake, rumor, hurt, apologize, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 84: Speaking Up Fairly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Speaking Up Fairly', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, roles, unequal, speak-up, solution', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Speaking Up Fairly',
    '{"lesson_name": "Speaking Up Fairly", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, roles, unequal, speak-up, solution"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 85: Checking In With a Friend
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Checking In With a Friend', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'friend, excluded, notice, check-in, support', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Checking In With a Friend',
    '{"lesson_name": "Checking In With a Friend", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "friend, excluded, notice, check-in, support"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 86: Trying a New Strategy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Trying a New Strategy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'practice, frustration, pause, strategy, progress', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trying a New Strategy',
    '{"lesson_name": "Trying a New Strategy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "practice, frustration, pause, strategy, progress"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 87: Using Calm Words
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using Calm Words', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict, tone, calm, I-statements, resolve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using Calm Words',
    '{"lesson_name": "Using Calm Words", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict, tone, calm, I-statements, resolve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 88: Making Space for Others
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making Space for Others', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'classroom, needs, accommodation, respect, teamwork', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Space for Others',
    '{"lesson_name": "Making Space for Others", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "classroom, needs, accommodation, respect, teamwork"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 89: Finishing With a Growth Mindset
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finishing With a Growth Mindset', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'performance, mistake, recover, mindset, growth', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finishing With a Growth Mindset',
    '{"lesson_name": "Finishing With a Growth Mindset", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "performance, mistake, recover, mindset, growth"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 90: Choosing Fair Leadership
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Fair Leadership', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, pressure, decision, fairness, courage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Fair Leadership',
    '{"lesson_name": "Choosing Fair Leadership", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "3", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, pressure, decision, fairness, courage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 91: Returning What You Find
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Returning What You Find', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bookmark, library, return, honesty', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Returning What You Find',
    '{"lesson_name": "Returning What You Find", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bookmark, library, return, honesty"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 92: Keeping Shared Spaces Clean
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Keeping Shared Spaces Clean', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'recycle-bin, wrapper, reminder, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Keeping Shared Spaces Clean',
    '{"lesson_name": "Keeping Shared Spaces Clean", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "recycle-bin, wrapper, reminder, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 93: Welcoming a New Buddy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Welcoming a New Buddy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'buddy, new-seat, nervous, welcome', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Welcoming a New Buddy',
    '{"lesson_name": "Welcoming a New Buddy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "buddy, new-seat, nervous, welcome"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 94: Following Directions Carefully
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Following Directions Carefully', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'clipboard, volunteer, directions, listen', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Following Directions Carefully',
    '{"lesson_name": "Following Directions Carefully", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "clipboard, volunteer, directions, listen"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 95: Sharing and Staying Tidy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing and Staying Tidy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'art-cart, supplies, share, tidy', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing and Staying Tidy',
    '{"lesson_name": "Sharing and Staying Tidy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "art-cart, supplies, share, tidy"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 96: Encouraging a Teammate
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Encouraging a Teammate', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'field-day, relay, stumble, encourage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Encouraging a Teammate',
    '{"lesson_name": "Encouraging a Teammate", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "field-day, relay, stumble, encourage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 97: Using the Quiet Signal
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using the Quiet Signal', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-table, noise, signal, adjust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using the Quiet Signal',
    '{"lesson_name": "Using the Quiet Signal", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-table, noise, signal, adjust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 98: Speaking Up for Fairness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Speaking Up for Fairness', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunch-line, cutting, fairness, speak', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Speaking Up for Fairness',
    '{"lesson_name": "Speaking Up for Fairness", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunch-line, cutting, fairness, speak"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 99: Cleaning Up and Learning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Cleaning Up and Learning', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'science-kit, spill, clean, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cleaning Up and Learning',
    '{"lesson_name": "Cleaning Up and Learning", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "science-kit, spill, clean, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 100: Building Confidence with Practice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Building Confidence with Practice', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'class-chart, goal, practice, confidence', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Building Confidence with Practice',
    '{"lesson_name": "Building Confidence with Practice", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "class-chart, goal, practice, confidence"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 101: A Kind Morning Greeting
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Kind Morning Greeting', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'morning-meeting, greeting, eye-contact, kindness', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Kind Morning Greeting',
    '{"lesson_name": "A Kind Morning Greeting", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "morning-meeting, greeting, eye-contact, kindness"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 102: Planning and Working Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Planning and Working Together', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team-poster, roles, plan, cooperate', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning and Working Together',
    '{"lesson_name": "Planning and Working Together", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team-poster, roles, plan, cooperate"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 103: Remembering to Return Books
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Remembering to Return Books', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'borrowed-book, due-date, remember, return', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Remembering to Return Books',
    '{"lesson_name": "Remembering to Return Books", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "borrowed-book, due-date, remember, return"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 104: Apologizing and Checking In
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Apologizing and Checking In', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'soccer-game, foul, feelings, apology', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Apologizing and Checking In',
    '{"lesson_name": "Apologizing and Checking In", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "soccer-game, foul, feelings, apology"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 105: Pausing Before Sharing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pausing Before Sharing', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, rumor, pause, verify', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pausing Before Sharing',
    '{"lesson_name": "Pausing Before Sharing", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, rumor, pause, verify"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 106: Following Steps Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Following Steps Together', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cooking-demo, instructions, patience, teamwork', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Following Steps Together',
    '{"lesson_name": "Following Steps Together", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cooking-demo, instructions, patience, teamwork"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 107: Giving Kind Feedback
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Giving Kind Feedback', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'peer-feedback, kind, specific, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Giving Kind Feedback',
    '{"lesson_name": "Giving Kind Feedback", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "peer-feedback, kind, specific, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 108: Finding a Compromise
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding a Compromise', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'club-meeting, vote, disagree, compromise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding a Compromise',
    '{"lesson_name": "Finding a Compromise", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "club-meeting, vote, disagree, compromise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 109: Adapting When Plans Change
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Adapting When Plans Change', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'service-project, schedule, delay, adapt', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Adapting When Plans Change',
    '{"lesson_name": "Adapting When Plans Change", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "service-project, schedule, delay, adapt"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 110: Recovering and Continuing Steadily
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Recovering and Continuing Steadily', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'presentation, mistake, recover, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recovering and Continuing Steadily',
    '{"lesson_name": "Recovering and Continuing Steadily", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "presentation, mistake, recover, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 111: Repairing Words With Empathy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Repairing Words With Empathy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'hallway, sarcasm, tone, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Repairing Words With Empathy',
    '{"lesson_name": "Repairing Words With Empathy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "hallway, sarcasm, tone, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 112: Making a Fair Plan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making a Fair Plan', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, imbalance, speak-up, fair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making a Fair Plan',
    '{"lesson_name": "Making a Fair Plan", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, imbalance, speak-up, fair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 113: Calming a Table Conflict
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calming a Table Conflict', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'seating-plan, conflict, mediator, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calming a Table Conflict',
    '{"lesson_name": "Calming a Table Conflict", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "seating-plan, conflict, mediator, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 114: Owning and Fixing Mistakes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Owning and Fixing Mistakes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'online-post, regret, delete, apologize', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Owning and Fixing Mistakes',
    '{"lesson_name": "Owning and Fixing Mistakes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "online-post, regret, delete, apologize"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 115: Handling Disappointment With Care
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Handling Disappointment With Care', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'tryouts, rejection, feelings, coping', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Handling Disappointment With Care',
    '{"lesson_name": "Handling Disappointment With Care", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "tryouts, rejection, feelings, coping"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 116: Resetting and Refocusing Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting and Refocusing Together', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner-work, attention, distraction, reset', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting and Refocusing Together',
    '{"lesson_name": "Resetting and Refocusing Together", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner-work, attention, distraction, reset"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 117: Listening Before Speaking
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening Before Speaking', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'class-debate, listen, summarize, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening Before Speaking',
    '{"lesson_name": "Listening Before Speaking", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "class-debate, listen, summarize, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 118: Choosing Transparency Builds Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Transparency Builds Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'fundraiser, money, transparency, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Transparency Builds Trust',
    '{"lesson_name": "Choosing Transparency Builds Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "fundraiser, money, transparency, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 119: Coaching With Encouragement
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Coaching With Encouragement', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'teammate, frustration, coaching, encouragement', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Coaching With Encouragement',
    '{"lesson_name": "Coaching With Encouragement", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "teammate, frustration, coaching, encouragement"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 120: Choosing Fairness Over Popularity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Fairness Over Popularity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, popularity, fairness, courage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Fairness Over Popularity',
    '{"lesson_name": "Choosing Fairness Over Popularity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "4", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, popularity, fairness, courage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 121: Repairing Words With Empathy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Repairing Words With Empathy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'hallway, sarcasm, tone, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Repairing Words With Empathy',
    '{"lesson_name": "Repairing Words With Empathy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "hallway, sarcasm, tone, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 122: Making a Fair Plan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making a Fair Plan', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, imbalance, speak-up, fair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making a Fair Plan',
    '{"lesson_name": "Making a Fair Plan", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, imbalance, speak-up, fair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 123: Calming a Table Conflict
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calming a Table Conflict', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'seating-plan, conflict, mediator, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calming a Table Conflict',
    '{"lesson_name": "Calming a Table Conflict", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "seating-plan, conflict, mediator, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 124: Owning and Fixing Mistakes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Owning and Fixing Mistakes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'online-post, regret, delete, apologize', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Owning and Fixing Mistakes',
    '{"lesson_name": "Owning and Fixing Mistakes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "online-post, regret, delete, apologize"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 125: Handling Disappointment With Care
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Handling Disappointment With Care', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'tryouts, rejection, feelings, coping', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Handling Disappointment With Care',
    '{"lesson_name": "Handling Disappointment With Care", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "tryouts, rejection, feelings, coping"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 126: Resetting and Refocusing Together
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting and Refocusing Together', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner-work, attention, distraction, reset', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting and Refocusing Together',
    '{"lesson_name": "Resetting and Refocusing Together", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner-work, attention, distraction, reset"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 127: Listening Before Speaking
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening Before Speaking', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'class-debate, listen, summarize, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening Before Speaking',
    '{"lesson_name": "Listening Before Speaking", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "class-debate, listen, summarize, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 128: Choosing Transparency Builds Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Transparency Builds Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'fundraiser, money, transparency, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Transparency Builds Trust',
    '{"lesson_name": "Choosing Transparency Builds Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "fundraiser, money, transparency, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 129: Coaching With Encouragement
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Coaching With Encouragement', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'teammate, frustration, coaching, encouragement', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Coaching With Encouragement',
    '{"lesson_name": "Coaching With Encouragement", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "teammate, frustration, coaching, encouragement"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 130: Choosing Fairness Over Popularity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Fairness Over Popularity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, popularity, fairness, courage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Fairness Over Popularity',
    '{"lesson_name": "Choosing Fairness Over Popularity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, popularity, fairness, courage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 131: Mentoring With Patience
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Mentoring With Patience', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mentoring, younger-student, patience, guidance', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mentoring With Patience',
    '{"lesson_name": "Mentoring With Patience", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mentoring, younger-student, patience, guidance"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 132: Finding Courage to Speak
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding Courage to Speak', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'class-forum, question, courage, speak', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding Courage to Speak',
    '{"lesson_name": "Finding Courage to Speak", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "class-forum, question, courage, speak"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 133: Staying Accountable to the Plan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Staying Accountable to the Plan', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, timeline, plan, accountable', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Staying Accountable to the Plan',
    '{"lesson_name": "Staying Accountable to the Plan", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, timeline, plan, accountable"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 134: Clarifying Before Reacting
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clarifying Before Reacting', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'misunderstanding, text, clarify, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clarifying Before Reacting',
    '{"lesson_name": "Clarifying Before Reacting", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "misunderstanding, text, clarify, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 135: Using Feedback to Improve
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using Feedback to Improve', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'peer-feedback, feelings, respectful, revise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using Feedback to Improve',
    '{"lesson_name": "Using Feedback to Improve", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "peer-feedback, feelings, respectful, revise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 136: Including Others at Lunch
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Including Others at Lunch', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunch-table, exclusion, notice, include', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Including Others at Lunch',
    '{"lesson_name": "Including Others at Lunch", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunch-table, exclusion, notice, include"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 137: Leading With Calm Focus
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading With Calm Focus', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team-captain, tension, calm, unify', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading With Calm Focus',
    '{"lesson_name": "Leading With Calm Focus", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team-captain, tension, calm, unify"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 138: Learning With Cultural Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning With Cultural Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cultural-night, questions, respect, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning With Cultural Respect',
    '{"lesson_name": "Learning With Cultural Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cultural-night, questions, respect, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 139: Making Fair Budget Choices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making Fair Budget Choices', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'community-budget, choices, fairness, explain', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Fair Budget Choices',
    '{"lesson_name": "Making Fair Budget Choices", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "community-budget, choices, fairness, explain"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 140: Adapting Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Adapting Under Pressure', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'presentation, glitch, adapt, composure', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Adapting Under Pressure',
    '{"lesson_name": "Adapting Under Pressure", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "presentation, glitch, adapt, composure"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 141: Pausing to Protect Integrity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pausing to Protect Integrity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, pause, verify, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pausing to Protect Integrity',
    '{"lesson_name": "Pausing to Protect Integrity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, pause, verify, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 142: Setting Respectful Boundaries
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Setting Respectful Boundaries', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'friend, boundary, respect, explain', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Setting Respectful Boundaries',
    '{"lesson_name": "Setting Respectful Boundaries", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "friend, boundary, respect, explain"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 143: Leading With Fairness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading With Fairness', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-leader, power, fairness, reflect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading With Fairness',
    '{"lesson_name": "Leading With Fairness", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-leader, power, fairness, reflect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 144: Choosing Honesty Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Honesty Under Pressure', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'competition, pressure, honesty, choice', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Honesty Under Pressure',
    '{"lesson_name": "Choosing Honesty Under Pressure", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "competition, pressure, honesty, choice"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 145: Listening to Resolve Conflict
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening to Resolve Conflict', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict, perspective, listen, resolve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening to Resolve Conflict',
    '{"lesson_name": "Listening to Resolve Conflict", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict, perspective, listen, resolve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 146: Acting With Quiet Courage
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Acting With Quiet Courage', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'exclusion, bystander, act, courage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Acting With Quiet Courage',
    '{"lesson_name": "Acting With Quiet Courage", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "exclusion, bystander, act, courage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 147: Responding Without Defensiveness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Responding Without Defensiveness', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'feedback, defensiveness, breathe, respond', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Responding Without Defensiveness',
    '{"lesson_name": "Responding Without Defensiveness", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "feedback, defensiveness, breathe, respond"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 148: Sharing Supplies With Equity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing Supplies With Equity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'limited-supplies, distribute, equity, justify', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing Supplies With Equity',
    '{"lesson_name": "Sharing Supplies With Equity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "limited-supplies, distribute, equity, justify"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 149: Owning Mistakes Builds Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Owning Mistakes Builds Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'trust, mistake, confess, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Owning Mistakes Builds Trust',
    '{"lesson_name": "Owning Mistakes Builds Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "trust, mistake, confess, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 150: Choosing by Your Values
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing by Your Values', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'identity, values, decision, future', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing by Your Values',
    '{"lesson_name": "Choosing by Your Values", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "5", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "identity, values, decision, future"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 151: Returning What Isn’t Yours
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Returning What Isn’t Yours', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'locker, mix-up, note, return, relief', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Returning What Isn’t Yours',
    '{"lesson_name": "Returning What Isn\u2019t Yours", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "locker, mix-up, note, return, relief"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 152: Checking Before Sharing Food
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Checking Before Sharing Food', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cafeteria, allergy, label, ask, careful', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Checking Before Sharing Food',
    '{"lesson_name": "Checking Before Sharing Food", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cafeteria, allergy, label, ask, careful"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 153: Clarifying Before Reacting
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clarifying Before Reacting', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, tone, misunderstanding, clarify, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clarifying Before Reacting',
    '{"lesson_name": "Clarifying Before Reacting", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, tone, misunderstanding, clarify, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 154: Keeping Study Time Quiet
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Keeping Study Time Quiet', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'library, study, whisper, focus, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Keeping Study Time Quiet',
    '{"lesson_name": "Keeping Study Time Quiet", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "library, study, whisper, focus, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 155: Recovering After Forgetting
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Recovering After Forgetting', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, cue, forget, recover, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recovering After Forgetting',
    '{"lesson_name": "Recovering After Forgetting", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, cue, forget, recover, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 156: Resetting and Finishing Strong
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting and Finishing Strong', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner-work, distract, timer, reset, finish', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting and Finishing Strong',
    '{"lesson_name": "Resetting and Finishing Strong", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner-work, distract, timer, reset, finish"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 157: Apologizing on a Crowded Bus
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Apologizing on a Crowded Bus', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bus, crowded, backpack, bump, apologize', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Apologizing on a Crowded Bus',
    '{"lesson_name": "Apologizing on a Crowded Bus", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bus, crowded, backpack, bump, apologize"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 158: Helping a Teammate Improve
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Helping a Teammate Improve', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team, practice, mistake, coach, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping a Teammate Improve',
    '{"lesson_name": "Helping a Teammate Improve", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team, practice, mistake, coach, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 159: Pausing Before Spreading Rumors
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pausing Before Spreading Rumors', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'hallway, rumor, pause, verify, honest', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pausing Before Spreading Rumors',
    '{"lesson_name": "Pausing Before Spreading Rumors", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "hallway, rumor, pause, verify, honest"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 160: Compromising After a Vote
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Compromising After a Vote', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'club, vote, disagree, compromise, fair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Compromising After a Vote',
    '{"lesson_name": "Compromising After a Vote", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "club, vote, disagree, compromise, fair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 161: Planning to Reduce Stress
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Planning to Reduce Stress', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'planner, deadline, stress, organize, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning to Reduce Stress',
    '{"lesson_name": "Planning to Reduce Stress", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "planner, deadline, stress, organize, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 162: Welcoming a New Partner
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Welcoming a New Partner', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'new-student, partner, welcome, questions, ease', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Welcoming a New Partner',
    '{"lesson_name": "Welcoming a New Partner", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "new-student, partner, welcome, questions, ease"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 163: Apologizing for Hurtful Jokes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Apologizing for Hurtful Jokes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cafeteria, joke, hurt, impact, apologize', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Apologizing for Hurtful Jokes',
    '{"lesson_name": "Apologizing for Hurtful Jokes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cafeteria, joke, hurt, impact, apologize"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 164: Clarifying Roles and Plans
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clarifying Roles and Plans', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, roles, confusion, clarify, align', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clarifying Roles and Plans',
    '{"lesson_name": "Clarifying Roles and Plans", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, roles, confusion, clarify, align"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 165: Using Self-Talk to Focus
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using Self-Talk to Focus', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'tryouts, nerves, self-talk, focus, effort', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using Self-Talk to Focus',
    '{"lesson_name": "Using Self-Talk to Focus", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "tryouts, nerves, self-talk, focus, effort"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 166: Learning With Cultural Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning With Cultural Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cultural-night, booth, respect, learn, gratitude', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning With Cultural Respect',
    '{"lesson_name": "Learning With Cultural Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cultural-night, booth, respect, learn, gratitude"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 167: Fixing Online Mistakes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fixing Online Mistakes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'online-post, screenshot, regret, delete, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fixing Online Mistakes',
    '{"lesson_name": "Fixing Online Mistakes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "online-post, screenshot, regret, delete, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 168: Staying Open to Feedback
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Staying Open to Feedback', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'peer-feedback, defensive, breathe, curious, revise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Staying Open to Feedback',
    '{"lesson_name": "Staying Open to Feedback", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "peer-feedback, defensive, breathe, curious, revise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 169: Finding a Fair Solution
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding a Fair Solution', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict, mediation, listen, reflect, solution', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding a Fair Solution',
    '{"lesson_name": "Finding a Fair Solution", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict, mediation, listen, reflect, solution"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 170: Teamwork With Limited Supplies
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork With Limited Supplies', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'service, supplies, shortage, prioritize, teamwork', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork With Limited Supplies',
    '{"lesson_name": "Teamwork With Limited Supplies", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "service, supplies, shortage, prioritize, teamwork"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 171: Choosing Integrity Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Integrity Under Pressure', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'quiz, whisper, pressure, choice, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Integrity Under Pressure',
    '{"lesson_name": "Choosing Integrity Under Pressure", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "quiz, whisper, pressure, choice, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 172: Inviting Someone to Belong
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Inviting Someone to Belong', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, exclusion, notice, invite, belong', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Inviting Someone to Belong',
    '{"lesson_name": "Inviting Someone to Belong", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, exclusion, notice, invite, belong"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 173: Speaking Up With Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Speaking Up With Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'comment, stereotype, pause, educate, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Speaking Up With Respect',
    '{"lesson_name": "Speaking Up With Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "comment, stereotype, pause, educate, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 174: Setting Calm Boundaries
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Setting Calm Boundaries', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'friend, boundary, pushy, explain, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Setting Calm Boundaries',
    '{"lesson_name": "Setting Calm Boundaries", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "friend, boundary, pushy, explain, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 175: Shifting From Blame
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Shifting From Blame', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team, blame, mistake, accountability, reset', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Shifting From Blame',
    '{"lesson_name": "Shifting From Blame", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team, blame, mistake, accountability, reset"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 176: Stopping a Harmful Rumor
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stopping a Harmful Rumor', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, screenshot, panic, truth, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stopping a Harmful Rumor',
    '{"lesson_name": "Stopping a Harmful Rumor", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, screenshot, panic, truth, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 177: Advocating for Better Balance
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Advocating for Better Balance', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'workload, overload, advocate, plan, balance', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Advocating for Better Balance',
    '{"lesson_name": "Advocating for Better Balance", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "workload, overload, advocate, plan, balance"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 178: Choosing Transparency Builds Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Transparency Builds Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'fundraiser, money, mismatch, transparency, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Transparency Builds Trust',
    '{"lesson_name": "Choosing Transparency Builds Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "fundraiser, money, mismatch, transparency, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 179: Reframing Jealousy With Gratitude
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reframing Jealousy With Gratitude', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'friendship, jealousy, compare, gratitude, reframe', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reframing Jealousy With Gratitude',
    '{"lesson_name": "Reframing Jealousy With Gratitude", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "friendship, jealousy, compare, gratitude, reframe"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 180: Choosing Fairness With Courage
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Fairness With Courage', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, fairness, popularity, pressure, courage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Fairness With Courage',
    '{"lesson_name": "Choosing Fairness With Courage", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "6", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, fairness, popularity, pressure, courage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 181: Apologizing and Adjusting Calmly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Apologizing and Adjusting Calmly', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'schedule, late, apologize, adjust, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Apologizing and Adjusting Calmly',
    '{"lesson_name": "Apologizing and Adjusting Calmly", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "schedule, late, apologize, adjust, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 182: Inviting Someone to Sit
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Inviting Someone to Sit', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cafeteria, seat, invite, welcome, ease', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Inviting Someone to Sit',
    '{"lesson_name": "Inviting Someone to Sit", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cafeteria, seat, invite, welcome, ease"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 183: Listening to Improve
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening to Improve', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'practice, critique, listen, improve, proud', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening to Improve',
    '{"lesson_name": "Listening to Improve", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "practice, critique, listen, improve, proud"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 184: Making a Clear Plan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making a Clear Plan', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group, timeline, stuck, plan, progress', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making a Clear Plan',
    '{"lesson_name": "Making a Clear Plan", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group, timeline, stuck, plan, progress"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 185: Clarifying Before Assuming
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clarifying Before Assuming', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'message, misunderstanding, tone, clarify, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clarifying Before Assuming',
    '{"lesson_name": "Clarifying Before Assuming", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "message, misunderstanding, tone, clarify, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 186: Disagreeing With Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Disagreeing With Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'debate, disagree, listen, respect, respond', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Disagreeing With Respect',
    '{"lesson_name": "Disagreeing With Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "debate, disagree, listen, respect, respond"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 187: Continuing After a Mistake
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Continuing After a Mistake', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, mistake, laugh, breathe, continue', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Continuing After a Mistake',
    '{"lesson_name": "Continuing After a Mistake", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, mistake, laugh, breathe, continue"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 188: Sharing Supplies Fairly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing Supplies Fairly', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'project, supplies, share, rotate, fair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing Supplies Fairly',
    '{"lesson_name": "Sharing Supplies Fairly", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "project, supplies, share, rotate, fair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 189: Listening to Support a Friend
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening to Support a Friend', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'friend, stressed, check-in, listen, support', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening to Support a Friend',
    '{"lesson_name": "Listening to Support a Friend", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "friend, stressed, check-in, listen, support"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 190: Leading by Sharing Responsibility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading by Sharing Responsibility', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'event, leadership, delegate, trust, succeed', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading by Sharing Responsibility',
    '{"lesson_name": "Leading by Sharing Responsibility", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "event, leadership, delegate, trust, succeed"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 191: Mapping Your Values
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Mapping Your Values', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'identity, journal, reflect, values, direction', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mapping Your Values',
    '{"lesson_name": "Mapping Your Values", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "identity, journal, reflect, values, direction"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 192: Resetting Team Unity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting Team Unity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team, tension, reset, goal, unity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting Team Unity',
    '{"lesson_name": "Resetting Team Unity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team, tension, reset, goal, unity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 193: Impact Over Intent
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Impact Over Intent', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, sarcasm, hurt, clarify, apologize', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Impact Over Intent',
    '{"lesson_name": "Impact Over Intent", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, sarcasm, hurt, clarify, apologize"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 194: Choosing Transparency Builds Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Transparency Builds Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'club, election, fairness, transparency, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Transparency Builds Trust',
    '{"lesson_name": "Choosing Transparency Builds Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "club, election, fairness, transparency, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 195: Reframing Feedback for Growth
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reframing Feedback for Growth', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'feedback, embarrassed, reframe, practice, growth', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reframing Feedback for Growth',
    '{"lesson_name": "Reframing Feedback for Growth", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "feedback, embarrassed, reframe, practice, growth"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 196: Learning With Cultural Humility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning With Cultural Humility', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'tradition, festival, questions, humility, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning With Cultural Humility',
    '{"lesson_name": "Learning With Cultural Humility", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "tradition, festival, questions, humility, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 197: Listening for Real Needs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening for Real Needs', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict, mediator, paraphrase, needs, solution', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening for Real Needs',
    '{"lesson_name": "Listening for Real Needs", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict, mediator, paraphrase, needs, solution"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 198: Protecting Energy With Boundaries
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Protecting Energy With Boundaries', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'workload, burnout, prioritize, boundaries, rest', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Protecting Energy With Boundaries',
    '{"lesson_name": "Protecting Energy With Boundaries", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "workload, burnout, prioritize, boundaries, rest"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 199: Choosing Integrity Over Winning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Integrity Over Winning', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'ethics, shortcut, temptation, decide, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Integrity Over Winning',
    '{"lesson_name": "Choosing Integrity Over Winning", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "ethics, shortcut, temptation, decide, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 200: Fair Distribution With Equity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Distribution With Equity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'community, shortage, equity, distribute, justify', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Distribution With Equity',
    '{"lesson_name": "Fair Distribution With Equity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "community, shortage, equity, distribute, justify"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 201: The Power of Pause
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'The Power of Pause', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict, trigger, pause, regulate, respond', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'The Power of Pause',
    '{"lesson_name": "The Power of Pause", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict, trigger, pause, regulate, respond"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 202: Calling In With Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calling In With Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bias, comment, call-in, explain, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calling In With Respect',
    '{"lesson_name": "Calling In With Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bias, comment, call-in, explain, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 203: Loyalty Versus Truth
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Loyalty Versus Truth', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'friendship, loyalty, pressure, truth, boundary', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Loyalty Versus Truth',
    '{"lesson_name": "Loyalty Versus Truth", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "friendship, loyalty, pressure, truth, boundary"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 204: Fairness Protects Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness Protects Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, conflict-of-interest, disclose, fairness, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness Protects Trust',
    '{"lesson_name": "Fairness Protects Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, conflict-of-interest, disclose, fairness, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 205: Stopping Harmful Rumors
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stopping Harmful Rumors', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, harm, intervene, evidence, stop', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stopping Harmful Rumors',
    '{"lesson_name": "Stopping Harmful Rumors", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, harm, intervene, evidence, stop"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 206: Rebuilding After Failure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Rebuilding After Failure', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'failure, shame, reflect, rebuild, resilience', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Rebuilding After Failure',
    '{"lesson_name": "Rebuilding After Failure", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "failure, shame, reflect, rebuild, resilience"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 207: Making Belonging Intentional
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making Belonging Intentional', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'belonging, exclusion, pattern, confront, change', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Belonging Intentional',
    '{"lesson_name": "Making Belonging Intentional", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "belonging, exclusion, pattern, confront, change"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 208: Choosing Purpose Over Ease
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Purpose Over Ease', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'values, future, choice, sacrifice, purpose', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Purpose Over Ease',
    '{"lesson_name": "Choosing Purpose Over Ease", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "values, future, choice, sacrifice, purpose"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 209: Truth Builds Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Truth Builds Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'integrity, confess, consequence, repair, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Truth Builds Trust',
    '{"lesson_name": "Truth Builds Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "integrity, confess, consequence, repair, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 210: Turning Voice Into Action
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Turning Voice Into Action', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'community, justice, voice, responsibility, action', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Turning Voice Into Action',
    '{"lesson_name": "Turning Voice Into Action", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "7", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "community, justice, voice, responsibility, action"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 211: Resetting Without Excuses
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting Without Excuses', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'planner, late, reset, calm, class', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting Without Excuses',
    '{"lesson_name": "Resetting Without Excuses", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "planner, late, reset, calm, class"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 212: An Open Seat Welcome
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'An Open Seat Welcome', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunch-table, new-student, invite, smile, talk', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'An Open Seat Welcome',
    '{"lesson_name": "An Open Seat Welcome", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunch-table, new-student, invite, smile, talk"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 213: Focus With a Plan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Focus With a Plan', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, roles, checklist, focus, finish', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Focus With a Plan',
    '{"lesson_name": "Focus With a Plan", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, roles, checklist, focus, finish"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 214: Coaching, Not Teasing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Coaching, Not Teasing', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'practice, mistake, coach, tip, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Coaching, Not Teasing',
    '{"lesson_name": "Coaching, Not Teasing", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "practice, mistake, coach, tip, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 215: Ask Before Assuming
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ask Before Assuming', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'text, tone, confusion, clarify, relief', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ask Before Assuming',
    '{"lesson_name": "Ask Before Assuming", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "text, tone, confusion, clarify, relief"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 216: Choosing Respectful Redirection
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Respectful Redirection', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'hallway, gossip, pause, redirect, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Respectful Redirection',
    '{"lesson_name": "Choosing Respectful Redirection", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "hallway, gossip, pause, redirect, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 217: Finding the Middle Ground
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding the Middle Ground', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'club, vote, disagree, listen, compromise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding the Middle Ground',
    '{"lesson_name": "Finding the Middle Ground", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "club, vote, disagree, listen, compromise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 218: Steady Through Mistakes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Steady Through Mistakes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, laugh, breathe, continue, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Steady Through Mistakes',
    '{"lesson_name": "Steady Through Mistakes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, laugh, breathe, continue, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 219: Listening Without Fixing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening Without Fixing', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'teammate, stress, check-in, listen, support', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening Without Fixing',
    '{"lesson_name": "Listening Without Fixing", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "teammate, stress, check-in, listen, support"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 220: Sharing the Workload
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing the Workload', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'service-day, task, delegate, trust, succeed', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing the Workload',
    '{"lesson_name": "Sharing the Workload", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "service-day, task, delegate, trust, succeed"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 221: Planning to Reduce Overwhelm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Planning to Reduce Overwhelm', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'workload, overwhelm, prioritize, plan, relief', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning to Reduce Overwhelm',
    '{"lesson_name": "Planning to Reduce Overwhelm", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "workload, overwhelm, prioritize, plan, relief"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 222: Accountability Repairs Harm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Accountability Repairs Harm', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, sarcasm, impact, apologize, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Accountability Repairs Harm',
    '{"lesson_name": "Accountability Repairs Harm", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, sarcasm, impact, apologize, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 223: Pause Before Sharing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pause Before Sharing', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, screenshot, context, verify, stop', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pause Before Sharing',
    '{"lesson_name": "Pause Before Sharing", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, screenshot, context, verify, stop"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 224: Turning Feedback Into Growth
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Turning Feedback Into Growth', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'peer-feedback, sting, breathe, curious, revise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Turning Feedback Into Growth',
    '{"lesson_name": "Turning Feedback Into Growth", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "peer-feedback, sting, breathe, curious, revise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 225: Setting Respectful Boundaries
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Setting Respectful Boundaries', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'friendship, boundary, pressure, explain, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Setting Respectful Boundaries',
    '{"lesson_name": "Setting Respectful Boundaries", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "friendship, boundary, pressure, explain, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 226: Respectful Disagreement First
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Respectful Disagreement First', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'debate, disagree, paraphrase, respect, respond', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Respectful Disagreement First',
    '{"lesson_name": "Respectful Disagreement First", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "debate, disagree, paraphrase, respect, respond"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 227: Resetting After a Loss
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting After a Loss', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team, blame, reset, goal, unity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting After a Loss',
    '{"lesson_name": "Resetting After a Loss", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team, blame, reset, goal, unity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 228: Learning With Humility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning With Humility', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cultural-night, questions, humility, listen, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning With Humility',
    '{"lesson_name": "Learning With Humility", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cultural-night, questions, humility, listen, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 229: Calm Leadership Brings Clarity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm Leadership Brings Clarity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, conflict, calm, delegate, clarity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm Leadership Brings Clarity',
    '{"lesson_name": "Calm Leadership Brings Clarity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, conflict, calm, delegate, clarity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 230: Reframing Jealousy Into Motivation
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reframing Jealousy Into Motivation', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'identity, comparison, jealousy, reframe, motivate', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reframing Jealousy Into Motivation',
    '{"lesson_name": "Reframing Jealousy Into Motivation", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "identity, comparison, jealousy, reframe, motivate"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 231: Choosing Values Over Shortcuts
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Values Over Shortcuts', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'integrity, shortcut, temptation, choose, values', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Values Over Shortcuts',
    '{"lesson_name": "Choosing Values Over Shortcuts", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "integrity, shortcut, temptation, choose, values"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 232: Calling In With Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calling In With Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bias, joke, call-in, explain, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calling In With Respect',
    '{"lesson_name": "Calling In With Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bias, joke, call-in, explain, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 233: Making Inclusion Intentional
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making Inclusion Intentional', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'exclusion, pattern, notice, intervene, include', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Inclusion Intentional',
    '{"lesson_name": "Making Inclusion Intentional", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "exclusion, pattern, notice, intervene, include"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 234: Truth Builds Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Truth Builds Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'trust, mistake, confess, consequence, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Truth Builds Trust',
    '{"lesson_name": "Truth Builds Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "trust, mistake, confess, consequence, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 235: Pause Before Responding
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pause Before Responding', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict, trigger, pause, regulate, respond', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pause Before Responding',
    '{"lesson_name": "Pause Before Responding", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict, trigger, pause, regulate, respond"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 236: Loyalty Without Lying
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Loyalty Without Lying', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'loyalty, pressure, lie, boundary, truth', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Loyalty Without Lying',
    '{"lesson_name": "Loyalty Without Lying", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "loyalty, pressure, lie, boundary, truth"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 237: Fairness Over Popularity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness Over Popularity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'fairness, leadership, popularity, pressure, courage', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness Over Popularity',
    '{"lesson_name": "Fairness Over Popularity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "fairness, leadership, popularity, pressure, courage"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 238: Equity With Limited Resources
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Equity With Limited Resources', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'equity, limited-supplies, distribute, justify, care', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Equity With Limited Resources',
    '{"lesson_name": "Equity With Limited Resources", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "equity, limited-supplies, distribute, justify, care"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 239: Repairing Digital Mistakes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Repairing Digital Mistakes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'digital-footprint, regret, repair, transparency, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Repairing Digital Mistakes',
    '{"lesson_name": "Repairing Digital Mistakes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "digital-footprint, regret, repair, transparency, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 240: Choosing Purpose Over Ease
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Purpose Over Ease', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'purpose, choice, sacrifice, future, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Purpose Over Ease',
    '{"lesson_name": "Choosing Purpose Over Ease", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "8", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "purpose, choice, sacrifice, future, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 241: Resetting With Calm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting With Calm', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'first-day, schedule, wrong-room, reset, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting With Calm',
    '{"lesson_name": "Resetting With Calm", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "first-day, schedule, wrong-room, reset, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 242: Starting With One Question
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Starting With One Question', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner-work, shy, greet, question, ease', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Starting With One Question',
    '{"lesson_name": "Starting With One Question", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner-work, shy, greet, question, ease"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 243: Using Feedback Wisely
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Using Feedback Wisely', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'practice, critique, listen, adjust, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Using Feedback Wisely',
    '{"lesson_name": "Using Feedback Wisely", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "practice, critique, listen, adjust, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 244: Making Space at Lunch
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making Space at Lunch', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cafeteria, seat, include, introduce, welcome', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Space at Lunch',
    '{"lesson_name": "Making Space at Lunch", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cafeteria, seat, include, introduce, welcome"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 245: Clear Roles, Real Progress
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clear Roles, Real Progress', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, confusion, clarify, roles, progress', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clear Roles, Real Progress',
    '{"lesson_name": "Clear Roles, Real Progress", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, confusion, clarify, roles, progress"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 246: Stop the Rumor
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stop the Rumor', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, hallway, pause, verify, protect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stop the Rumor',
    '{"lesson_name": "Stop the Rumor", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, hallway, pause, verify, protect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 247: Breathe and Continue
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Breathe and Continue', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, mistake, breathe, continue, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Breathe and Continue',
    '{"lesson_name": "Breathe and Continue", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, mistake, breathe, continue, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 248: Encouragement Changes Outcomes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Encouragement Changes Outcomes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'teammate, frustration, coach, encourage, retry', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Encouragement Changes Outcomes',
    '{"lesson_name": "Encouragement Changes Outcomes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "teammate, frustration, coach, encourage, retry"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 249: Planning for Balance
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Planning for Balance', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'deadline, stress, plan, prioritize, balance', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning for Balance',
    '{"lesson_name": "Planning for Balance", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "deadline, stress, plan, prioritize, balance"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 250: Leading by Sharing Work
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading by Sharing Work', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, delegate, trust, follow-up, succeed', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading by Sharing Work',
    '{"lesson_name": "Leading by Sharing Work", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, delegate, trust, follow-up, succeed"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 251: A Promise on Paper
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Promise on Paper', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'identity, journal, values, reflect, direction', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Promise on Paper',
    '{"lesson_name": "A Promise on Paper", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "identity, journal, values, reflect, direction"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 252: Ask Before Assuming
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ask Before Assuming', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, tone, misread, clarify, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ask Before Assuming',
    '{"lesson_name": "Ask Before Assuming", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, tone, misread, clarify, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 253: Curiosity Over Defensiveness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Curiosity Over Defensiveness', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'peer-feedback, defensive, breathe, curious, revise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Curiosity Over Defensiveness',
    '{"lesson_name": "Curiosity Over Defensiveness", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "peer-feedback, defensive, breathe, curious, revise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 254: Turning Blame Into Progress
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Turning Blame Into Progress', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team, tension, reset, accountability, unity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Turning Blame Into Progress',
    '{"lesson_name": "Turning Blame Into Progress", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team, tension, reset, accountability, unity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 255: Setting a Clear Boundary
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Setting a Clear Boundary', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'boundary, friendship, pressure, explain, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Setting a Clear Boundary',
    '{"lesson_name": "Setting a Clear Boundary", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "boundary, friendship, pressure, explain, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 256: Pause Before You Post
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pause Before You Post', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'digital-footprint, repost, consequence, pause, decide', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pause Before You Post',
    '{"lesson_name": "Pause Before You Post", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "digital-footprint, repost, consequence, pause, decide"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 257: Learning With Humility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning With Humility', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cultural-exchange, questions, listen, humility, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning With Humility',
    '{"lesson_name": "Learning With Humility", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cultural-exchange, questions, listen, humility, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 258: Naming Needs, Finding Solutions
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Naming Needs, Finding Solutions', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict, mediation, paraphrase, needs, solution', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Naming Needs, Finding Solutions',
    '{"lesson_name": "Naming Needs, Finding Solutions", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict, mediation, paraphrase, needs, solution"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 259: Protecting Energy and Balance
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Protecting Energy and Balance', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'burnout, schedule, boundaries, rest, recover', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Protecting Energy and Balance',
    '{"lesson_name": "Protecting Energy and Balance", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "burnout, schedule, boundaries, rest, recover"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 260: Choosing the Honest Path
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing the Honest Path', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'ethics, shortcut, temptation, choose, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing the Honest Path',
    '{"lesson_name": "Choosing the Honest Path", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "ethics, shortcut, temptation, choose, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 261: Calm Courage in Action
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm Courage in Action', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bias, comment, call-in, explain, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm Courage in Action',
    '{"lesson_name": "Calm Courage in Action", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bias, comment, call-in, explain, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 262: Designing for Belonging
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Designing for Belonging', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'exclusion, pattern, redesign, include, belonging', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Designing for Belonging',
    '{"lesson_name": "Designing for Belonging", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "exclusion, pattern, redesign, include, belonging"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 263: Choosing Truth Over Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Truth Over Pressure', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'loyalty, pressure, lie, boundary, truth', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Truth Over Pressure',
    '{"lesson_name": "Choosing Truth Over Pressure", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "loyalty, pressure, lie, boundary, truth"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 264: Responsibility Shows Up Early
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Responsibility Shows Up Early', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'accountability, confess, consequence, repair, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Responsibility Shows Up Early',
    '{"lesson_name": "Responsibility Shows Up Early", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "accountability, confess, consequence, repair, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 265: Fairness Before Friendship
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness Before Friendship', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, conflict-of-interest, disclose, fairness, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness Before Friendship',
    '{"lesson_name": "Fairness Before Friendship", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, conflict-of-interest, disclose, fairness, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 266: Stopping Harmful Stories
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stopping Harmful Stories', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, harm, intervene, evidence, stop', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stopping Harmful Stories',
    '{"lesson_name": "Stopping Harmful Stories", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, harm, intervene, evidence, stop"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 267: Power in the Pause
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Power in the Pause', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'anger, trigger, pause, regulate, choose', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Power in the Pause',
    '{"lesson_name": "Power in the Pause", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "anger, trigger, pause, regulate, choose"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 268: Fairness With Compassion
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness With Compassion', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'equity, resources, distribute, justify, compassion', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness With Compassion',
    '{"lesson_name": "Fairness With Compassion", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "equity, resources, distribute, justify, compassion"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 269: Choosing Purpose Over Ease
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Purpose Over Ease', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'identity, values, decision, sacrifice, purpose', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Purpose Over Ease',
    '{"lesson_name": "Choosing Purpose Over Ease", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "identity, values, decision, sacrifice, purpose"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 270: When Integrity Becomes Action
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'When Integrity Becomes Action', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'responsibility, community, voice, action, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'When Integrity Becomes Action',
    '{"lesson_name": "When Integrity Becomes Action", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "9", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "responsibility, community, voice, action, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 271: Reset and Refocus
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reset and Refocus', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'schedule, wrong-room, reset, calm, focus', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reset and Refocus',
    '{"lesson_name": "Reset and Refocus", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "schedule, wrong-room, reset, calm, focus"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 272: Starting With One Question
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Starting With One Question', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner, awkward, greet, question, ease', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Starting With One Question',
    '{"lesson_name": "Starting With One Question", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner, awkward, greet, question, ease"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 273: Feedback as a Tool
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Feedback as a Tool', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'practice, critique, listen, adjust, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feedback as a Tool',
    '{"lesson_name": "Feedback as a Tool", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "practice, critique, listen, adjust, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 274: Making Space to Belong
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making Space to Belong', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunch, seat, include, introduce, belong', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making Space to Belong',
    '{"lesson_name": "Making Space to Belong", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunch, seat, include, introduce, belong"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 275: Clear Roles, Real Progress
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clear Roles, Real Progress', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'project, confusion, clarify, roles, progress', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clear Roles, Real Progress',
    '{"lesson_name": "Clear Roles, Real Progress", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "project, confusion, clarify, roles, progress"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 276: Pause Before You Pass
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pause Before You Pass', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, pause, verify, protect, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pause Before You Pass',
    '{"lesson_name": "Pause Before You Pass", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, pause, verify, protect, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 277: Staying Steady After Mistakes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Staying Steady After Mistakes', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, mistake, breathe, continue, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Staying Steady After Mistakes',
    '{"lesson_name": "Staying Steady After Mistakes", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, mistake, breathe, continue, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 278: Coaching Instead of Criticizing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Coaching Instead of Criticizing', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'teammate, frustration, encourage, coach, retry', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Coaching Instead of Criticizing',
    '{"lesson_name": "Coaching Instead of Criticizing", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "teammate, frustration, encourage, coach, retry"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 279: Planning for Balance
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Planning for Balance', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'deadlines, stress, prioritize, plan, balance', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning for Balance',
    '{"lesson_name": "Planning for Balance", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "deadlines, stress, prioritize, plan, balance"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 280: Leading Without Doing Everything
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading Without Doing Everything', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, delegate, trust, follow-up, succeed', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading Without Doing Everything',
    '{"lesson_name": "Leading Without Doing Everything", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, delegate, trust, follow-up, succeed"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 281: Mapping Your Values
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Mapping Your Values', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'identity, journal, values, reflect, direction', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mapping Your Values',
    '{"lesson_name": "Mapping Your Values", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "identity, journal, values, reflect, direction"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 282: Ask Before Assuming
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ask Before Assuming', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, tone, misread, clarify, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ask Before Assuming',
    '{"lesson_name": "Ask Before Assuming", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, tone, misread, clarify, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 283: Curiosity Over Defensiveness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Curiosity Over Defensiveness', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'feedback, defensive, breathe, curious, revise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Curiosity Over Defensiveness',
    '{"lesson_name": "Curiosity Over Defensiveness", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "feedback, defensive, breathe, curious, revise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 284: From Blame to Unity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'From Blame to Unity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team, tension, reset, accountability, unity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'From Blame to Unity',
    '{"lesson_name": "From Blame to Unity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team, tension, reset, accountability, unity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 285: Respecting Personal Boundaries
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Respecting Personal Boundaries', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'boundary, friendship, pressure, explain, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Respecting Personal Boundaries',
    '{"lesson_name": "Respecting Personal Boundaries", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "boundary, friendship, pressure, explain, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 286: Pause Before You Post
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pause Before You Post', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'repost, digital-footprint, consequence, pause, decide', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pause Before You Post',
    '{"lesson_name": "Pause Before You Post", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "repost, digital-footprint, consequence, pause, decide"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 287: Learning Through Listening
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning Through Listening', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cultural-exchange, questions, listen, humility, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning Through Listening',
    '{"lesson_name": "Learning Through Listening", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cultural-exchange, questions, listen, humility, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 288: Naming Needs, Finding Solutions
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Naming Needs, Finding Solutions', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mediation, conflict, paraphrase, needs, solution', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Naming Needs, Finding Solutions',
    '{"lesson_name": "Naming Needs, Finding Solutions", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mediation, conflict, paraphrase, needs, solution"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 289: Protecting Your Energy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Protecting Your Energy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'burnout, schedule, boundaries, rest, recover', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Protecting Your Energy',
    '{"lesson_name": "Protecting Your Energy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "burnout, schedule, boundaries, rest, recover"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 290: Choosing the Honest Path
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing the Honest Path', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'shortcut, ethics, temptation, choose, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing the Honest Path',
    '{"lesson_name": "Choosing the Honest Path", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "shortcut, ethics, temptation, choose, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 291: Calling In With Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calling In With Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bias, comment, call-in, explain, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calling In With Respect',
    '{"lesson_name": "Calling In With Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bias, comment, call-in, explain, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 292: Designing Inclusive Groups
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Designing Inclusive Groups', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'exclusion, pattern, redesign, include, belonging', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Designing Inclusive Groups',
    '{"lesson_name": "Designing Inclusive Groups", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "exclusion, pattern, redesign, include, belonging"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 293: Truth Over Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Truth Over Pressure', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'loyalty, pressure, lie, boundary, truth', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Truth Over Pressure',
    '{"lesson_name": "Truth Over Pressure", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "loyalty, pressure, lie, boundary, truth"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 294: Owning the Mistake
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Owning the Mistake', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'confess, accountability, consequence, repair, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Owning the Mistake',
    '{"lesson_name": "Owning the Mistake", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "confess, accountability, consequence, repair, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 295: Stepping Back Fairly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stepping Back Fairly', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leader, conflict-of-interest, disclose, fairness, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stepping Back Fairly',
    '{"lesson_name": "Stepping Back Fairly", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leader, conflict-of-interest, disclose, fairness, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 296: Stopping Harmful Rumors
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stopping Harmful Rumors', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, harm, intervene, evidence, stop', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stopping Harmful Rumors',
    '{"lesson_name": "Stopping Harmful Rumors", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, harm, intervene, evidence, stop"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 297: Choosing Self-Control
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Self-Control', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'anger, trigger, pause, regulate, choose', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Self-Control',
    '{"lesson_name": "Choosing Self-Control", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "anger, trigger, pause, regulate, choose"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 298: Fairness With Compassion
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness With Compassion', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'equity, resources, distribute, justify, compassion', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness With Compassion',
    '{"lesson_name": "Fairness With Compassion", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "equity, resources, distribute, justify, compassion"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 299: Choosing Purpose Over Ease
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Purpose Over Ease', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'values, decision, sacrifice, purpose, future', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Purpose Over Ease',
    '{"lesson_name": "Choosing Purpose Over Ease", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "values, decision, sacrifice, purpose, future"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 300: Turning Values Into Action
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Turning Values Into Action', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'responsibility, community, voice, action, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Turning Values Into Action',
    '{"lesson_name": "Turning Values Into Action", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "10", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "responsibility, community, voice, action, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 301: Starting With Calm Focus
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Starting With Calm Focus', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'early-morning, campus, reset, calm, focus', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Starting With Calm Focus',
    '{"lesson_name": "Starting With Calm Focus", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "early-morning, campus, reset, calm, focus"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 302: Listening Builds Ease
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening Builds Ease', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner, awkward, greet, listen, ease', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening Builds Ease',
    '{"lesson_name": "Listening Builds Ease", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner, awkward, greet, listen, ease"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 303: Reflect, Then Improve
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reflect, Then Improve', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'practice, critique, reflect, adjust, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reflect, Then Improve',
    '{"lesson_name": "Reflect, Then Improve", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "practice, critique, reflect, adjust, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 304: A Seat Means Belonging
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'A Seat Means Belonging', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'lunch, inclusion, invite, share, belong', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'A Seat Means Belonging',
    '{"lesson_name": "A Seat Means Belonging", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "lunch, inclusion, invite, share, belong"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 305: Clear Plans Move Teams
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clear Plans Move Teams', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'project, clarity, roles, timeline, progress', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clear Plans Move Teams',
    '{"lesson_name": "Clear Plans Move Teams", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "project, clarity, roles, timeline, progress"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 306: Pause Before You Share
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pause Before You Share', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, pause, verify, protect, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pause Before You Share',
    '{"lesson_name": "Pause Before You Share", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, pause, verify, protect, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 307: Recover and Keep Going
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Recover and Keep Going', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, mistake, breathe, recover, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recover and Keep Going',
    '{"lesson_name": "Recover and Keep Going", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, mistake, breathe, recover, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 308: Coaching With Encouragement
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Coaching With Encouragement', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'teammate, frustration, encourage, coach, retry', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Coaching With Encouragement',
    '{"lesson_name": "Coaching With Encouragement", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "teammate, frustration, encourage, coach, retry"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 309: Balance Fuels Performance
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Balance Fuels Performance', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'deadlines, stress, prioritize, rest, balance', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Balance Fuels Performance',
    '{"lesson_name": "Balance Fuels Performance", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "deadlines, stress, prioritize, rest, balance"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 310: Leading Through Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading Through Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, delegate, trust, align, succeed', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading Through Trust',
    '{"lesson_name": "Leading Through Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, delegate, trust, align, succeed"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 311: Choosing Your Direction
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Your Direction', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'identity, values, reflect, future, direction', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Your Direction',
    '{"lesson_name": "Choosing Your Direction", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "identity, values, reflect, future, direction"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 312: Clarify Before Assuming
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Clarify Before Assuming', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-chat, tone, assumption, clarify, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Clarify Before Assuming',
    '{"lesson_name": "Clarify Before Assuming", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-chat, tone, assumption, clarify, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 313: Curiosity Over Pride
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Curiosity Over Pride', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'feedback, pride, sting, curiosity, revise', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Curiosity Over Pride',
    '{"lesson_name": "Curiosity Over Pride", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "feedback, pride, sting, curiosity, revise"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 314: Resetting Team Trust
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resetting Team Trust', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'team, accountability, conflict, reset, unity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resetting Team Trust',
    '{"lesson_name": "Resetting Team Trust", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "team, accountability, conflict, reset, unity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 315: Saying No Clearly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Saying No Clearly', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'boundary, relationship, pressure, say-no, respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Saying No Clearly',
    '{"lesson_name": "Saying No Clearly", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "boundary, relationship, pressure, say-no, respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 316: Ethics Before Posting
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ethics Before Posting', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'digital-post, consequence, pause, decide, ethics', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ethics Before Posting',
    '{"lesson_name": "Ethics Before Posting", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "digital-post, consequence, pause, decide, ethics"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 317: Listening With Humility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening With Humility', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cultural-visit, humility, listen, meaning, learn', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening With Humility',
    '{"lesson_name": "Listening With Humility", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cultural-visit, humility, listen, meaning, learn"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 318: Finding Solutions Through Empathy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Finding Solutions Through Empathy', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mediation, needs, paraphrase, empathy, solution', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Finding Solutions Through Empathy',
    '{"lesson_name": "Finding Solutions Through Empathy", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mediation, needs, paraphrase, empathy, solution"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 319: Planning for Balance
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Planning for Balance', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'burnout, boundaries, prioritize, rest, recover', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Planning for Balance',
    '{"lesson_name": "Planning for Balance", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "burnout, boundaries, prioritize, rest, recover"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 320: Choosing Integrity First
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Integrity First', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'shortcut, temptation, integrity, choose, self-respect', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Integrity First',
    '{"lesson_name": "Choosing Integrity First", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "shortcut, temptation, integrity, choose, self-respect"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 321: Challenging Harm With Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Challenging Harm With Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'bias, comment, challenge, respect, repair', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Challenging Harm With Respect',
    '{"lesson_name": "Challenging Harm With Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "bias, comment, challenge, respect, repair"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 322: Redesigning Belonging Systems
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Redesigning Belonging Systems', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'exclusion, system, redesign, belonging, accountability', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Redesigning Belonging Systems',
    '{"lesson_name": "Redesigning Belonging Systems", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "exclusion, system, redesign, belonging, accountability"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 323: Truth Over False Loyalty
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Truth Over False Loyalty', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'loyalty, pressure, lie, truth, boundary', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Truth Over False Loyalty',
    '{"lesson_name": "Truth Over False Loyalty", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "loyalty, pressure, lie, truth, boundary"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 324: Owning Mistakes Early
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Owning Mistakes Early', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'accountability, confess, consequence, repair, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Owning Mistakes Early',
    '{"lesson_name": "Owning Mistakes Early", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "accountability, confess, consequence, repair, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 325: Disclosing Conflicts Fairly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Disclosing Conflicts Fairly', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'conflict-of-interest, leadership, disclose, fairness, trust', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Disclosing Conflicts Fairly',
    '{"lesson_name": "Disclosing Conflicts Fairly", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "conflict-of-interest, leadership, disclose, fairness, trust"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 326: Interrupting Harmful Rumors
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Interrupting Harmful Rumors', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, harm, intervene, evidence, stop', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Interrupting Harmful Rumors',
    '{"lesson_name": "Interrupting Harmful Rumors", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, harm, intervene, evidence, stop"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 327: Choosing Control Over Anger
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Control Over Anger', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'anger, trigger, regulate, pause, choose', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Control Over Anger',
    '{"lesson_name": "Choosing Control Over Anger", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "anger, trigger, regulate, pause, choose"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 328: Fairness Through Compassion
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness Through Compassion', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'equity, resources, fairness, justify, compassion', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness Through Compassion',
    '{"lesson_name": "Fairness Through Compassion", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "equity, resources, fairness, justify, compassion"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 329: Choosing Purposeful Sacrifice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Purposeful Sacrifice', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'values, decision, sacrifice, purpose, identity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Purposeful Sacrifice',
    '{"lesson_name": "Choosing Purposeful Sacrifice", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "values, decision, sacrifice, purpose, identity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 330: Turning Voice Into Action
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Turning Voice Into Action', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'responsibility, community, voice, action, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Turning Voice Into Action',
    '{"lesson_name": "Turning Voice Into Action", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "11", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "responsibility, community, voice, action, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 331: Starting With Calm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Starting With Calm', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'sunrise, campus, breathe, focus, calm', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Starting With Calm',
    '{"lesson_name": "Starting With Calm", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "sunrise, campus, breathe, focus, calm"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 332: Listening With Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Listening With Respect', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'mentor, advice, listen, reflect, thanks', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Listening With Respect',
    '{"lesson_name": "Listening With Respect", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "mentor, advice, listen, reflect, thanks"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 333: Easing Into Connection
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Easing Into Connection', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'partner, awkward, question, smile, ease', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Easing Into Connection',
    '{"lesson_name": "Easing Into Connection", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "partner, awkward, question, smile, ease"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 334: Balancing Work And Rest
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Balancing Work And Rest', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'deadline, stress, plan, rest, balance', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Balancing Work And Rest',
    '{"lesson_name": "Balancing Work And Rest", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "deadline, stress, plan, rest, balance"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 335: Making The Plan Clear
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Making The Plan Clear', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'group-project, roles, clarify, timeline, progress', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Making The Plan Clear',
    '{"lesson_name": "Making The Plan Clear", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "group-project, roles, clarify, timeline, progress"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 336: Choosing Integrity Over Attention
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Integrity Over Attention', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rumor, pause, verify, protect, integrity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Integrity Over Attention',
    '{"lesson_name": "Choosing Integrity Over Attention", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rumor, pause, verify, protect, integrity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 337: Recovering With Confidence
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Recovering With Confidence', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rehearsal, mistake, breathe, recover, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recovering With Confidence',
    '{"lesson_name": "Recovering With Confidence", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rehearsal, mistake, breathe, recover, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 338: Growing Through Feedback
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Growing Through Feedback', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'feedback, sting, curious, revise, improve', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growing Through Feedback',
    '{"lesson_name": "Growing Through Feedback", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "feedback, sting, curious, revise, improve"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 339: Leading By Trusting Others
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading By Trusting Others', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'leadership, delegate, trust, align, succeed', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading By Trusting Others',
    '{"lesson_name": "Leading By Trusting Others", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "leadership, delegate, trust, align, succeed"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 340: Choosing Aligned Courage
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Aligned Courage', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'EASY',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'future, choice, values, courage, steady', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Aligned Courage',
    '{"lesson_name": "Choosing Aligned Courage", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "EASY", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "future, choice, values, courage, steady"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 341: Reading History With Humility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reading History With Humility', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'desert ruins, collapsed arch, history, humility, interpretation', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading History With Humility',
    '{"lesson_name": "Reading History With Humility", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "desert ruins, collapsed arch, history, humility, interpretation"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 342: Persistence Finds Meaning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Persistence Finds Meaning', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'high-altitude observatory, star records, inquiry, persistence, meaning', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Persistence Finds Meaning',
    '{"lesson_name": "Persistence Finds Meaning", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "high-altitude observatory, star records, inquiry, persistence, meaning"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 343: Reasoning Reduces Risk
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reasoning Reduces Risk', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'volcanic crater, seismic layers, risk reasoning, judgment, preparedness', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reasoning Reduces Risk',
    '{"lesson_name": "Reasoning Reduces Risk", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "volcanic crater, seismic layers, risk reasoning, judgment, preparedness"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 344: Protecting Knowledge With Care
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Protecting Knowledge With Care', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'sacred hall, preserved manuscripts, ethics, stewardship, reverence', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Protecting Knowledge With Care',
    '{"lesson_name": "Protecting Knowledge With Care", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "sacred hall, preserved manuscripts, ethics, stewardship, reverence"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 345: Climbing Together Safely
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Climbing Together Safely', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rainforest canopy, climbing platforms, caution, strategy, teamwork', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Climbing Together Safely',
    '{"lesson_name": "Climbing Together Safely", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rainforest canopy, climbing platforms, caution, strategy, teamwork"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 346: Innovation With Responsibility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Innovation With Responsibility', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'desert observatory, solar models, innovation, responsibility, perspective', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Innovation With Responsibility',
    '{"lesson_name": "Innovation With Responsibility", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "desert observatory, solar models, innovation, responsibility, perspective"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 347: Walking With Cultural Insight
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Walking With Cultural Insight', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'old temple path, layered rituals, cultural insight, empathy, meaning', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Walking With Cultural Insight',
    '{"lesson_name": "Walking With Cultural Insight", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "old temple path, layered rituals, cultural insight, empathy, meaning"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 348: Thinking With Evidence
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Thinking With Evidence', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'cliff plateau, wind study, evidence, reasoning, clarity', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Thinking With Evidence',
    '{"lesson_name": "Thinking With Evidence", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "cliff plateau, wind study, evidence, reasoning, clarity"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 349: Stories That Shape Identity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stories That Shape Identity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'island archive, oral testimonies, identity, continuity, reflection', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stories That Shape Identity',
    '{"lesson_name": "Stories That Shape Identity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "island archive, oral testimonies, identity, continuity, reflection"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 350: Leading Through The Storm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leading Through The Storm', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'MEDIUM',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'canyon shelter, sudden storm, calm leadership, cooperation, resilience', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leading Through The Storm',
    '{"lesson_name": "Leading Through The Storm", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "MEDIUM", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "canyon shelter, sudden storm, calm leadership, cooperation, resilience"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 351: Breathing The Planet’s Story
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Breathing The Planet’s Story', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'polar ice field, ancient air pockets, insight, global systems, agency', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Breathing The Planet’s Story',
    '{"lesson_name": "Breathing The Planet\u2019s Story", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "polar ice field, ancient air pockets, insight, global systems, agency"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 352: Legacy Shapes Who We Are
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Legacy Shapes Who We Are', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'ancestral shrine, engraved stones, identity, reverence, legacy', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Legacy Shapes Who We Are',
    '{"lesson_name": "Legacy Shapes Who We Are", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "ancestral shrine, engraved stones, identity, reverence, legacy"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 353: Ethics At The Edge
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ethics At The Edge', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'volcanic ridge, geothermal vents, inquiry, risk ethics, reasoning', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ethics At The Edge',
    '{"lesson_name": "Ethics At The Edge", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "volcanic ridge, geothermal vents, inquiry, risk ethics, reasoning"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 354: Choosing Restraint With Integrity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choosing Restraint With Integrity', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'monastic library, sealed archives, integrity, intellectual restraint, choices', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choosing Restraint With Integrity',
    '{"lesson_name": "Choosing Restraint With Integrity", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "monastic library, sealed archives, integrity, intellectual restraint, choices"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 355: Learning From Impermanence
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning From Impermanence', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'desert temple, shifting patterns, symbolism, impermanence, reflection', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning From Impermanence',
    '{"lesson_name": "Learning From Impermanence", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "desert temple, shifting patterns, symbolism, impermanence, reflection"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 356: Humility In The Data
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Humility In The Data', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'polar research vessel, data conflict, analysis, humility, persistence', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Humility In The Data',
    '{"lesson_name": "Humility In The Data", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "polar research vessel, data conflict, analysis, humility, persistence"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 357: Stewardship As Cultural Value
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stewardship As Cultural Value', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'rainforest shrine, layered carvings, cultural ecology, meaning, stewardship', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stewardship As Cultural Value',
    '{"lesson_name": "Stewardship As Cultural Value", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "rainforest shrine, layered carvings, cultural ecology, meaning, stewardship"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 358: Light For Shared Futures
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Light For Shared Futures', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'canyon summit, lantern vigil, unity, purpose, collective hope', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Light For Shared Futures',
    '{"lesson_name": "Light For Shared Futures", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "canyon summit, lantern vigil, unity, purpose, collective hope"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 359: Justice In Sustainable Systems
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Justice In Sustainable Systems', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'coastal wind towers, systemic impact, justice, sustainability, ethics', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Justice In Sustainable Systems',
    '{"lesson_name": "Justice In Sustainable Systems", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "coastal wind towers, systemic impact, justice, sustainability, ethics"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 360: Small Under Infinite Skies
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Small Under Infinite Skies', 'Build a Story With Keywords for the user',
    'ccff362e-8ca9-4b2c-ad37-faba8542543b', 'HARD',
    'Story Building with Keywords', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'example_question', 'forest, lantern, path, courage, adventure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'keywords', 'polar night, star field, perspective, humility, interconnectedness', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Small Under Infinite Skies',
    '{"lesson_name": "Small Under Infinite Skies", "lesson_description": "Build a Story With Keywords for the user", "training_module_id": "ccff362e-8ca9-4b2c-ad37-faba8542543b", "class_name": "12", "difficulty_level": "HARD", "lesson_type": "Story Building with Keywords", "contents": [{"content_key": "example_question", "content_value": "forest, lantern, path, courage, adventure"}, {"content_key": "example_content", "content_value": "In a quiet forest, a child discovered a glowing lantern lying on the path. Holding it high, they found the courage to walk deeper into the woods. Every step revealed hidden wonders, and the adventure showed that bravery lights the way forward."}, {"content_key": "keywords", "content_value": "polar night, star field, perspective, humility, interconnectedness"}]}',
    'published', true, NOW()
  );
END $$;
