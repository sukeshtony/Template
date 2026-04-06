-- =====================================================
-- RAPID QUESTIONS (Quick Thinking) — 360 lessons
-- Run this entire script in a single pgAdmin query window
-- =====================================================

-- Lesson 1: Color Snap Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Color Snap Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Colors & choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite color?.What color do you like to wear?.What color makes you feel happy?.What color do you see in the sky?.What color do you see on a leaf?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Color Snap Round',
    '{"lesson_name": "Color Snap Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Colors & choices"}, {"content_key": "rapid_questions", "content_value": "What is your favorite color?.What color do you like to wear?.What color makes you feel happy?.What color do you see in the sky?.What color do you see on a leaf?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: Animal Quick Picks
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Animal Quick Picks', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Animals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite animal?.Which animal is big?.Which animal is small?.Which animal do you think is friendly?.Which animal would you like to learn about?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Animal Quick Picks',
    '{"lesson_name": "Animal Quick Picks", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Animals"}, {"content_key": "rapid_questions", "content_value": "What is your favorite animal?.Which animal is big?.Which animal is small?.Which animal do you think is friendly?.Which animal would you like to learn about?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Snack Time Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Snack Time Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Food & snacks', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite snack?.Do you like crunchy or soft snacks?.What fruit do you like?.What drink do you choose when thirsty?.What snack do you share with a friend?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Snack Time Dash',
    '{"lesson_name": "Snack Time Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Food & snacks"}, {"content_key": "rapid_questions", "content_value": "What is your favorite snack?.Do you like crunchy or soft snacks?.What fruit do you like?.What drink do you choose when thirsty?.What snack do you share with a friend?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: Playtime Speed Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Playtime Speed Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Games & play', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What game do you like to play?.Do you like tag or hide-and-seek more?.Do you like playing inside or outside?.Who do you like to play with?.What makes a game fun?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Playtime Speed Round',
    '{"lesson_name": "Playtime Speed Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Games & play"}, {"content_key": "rapid_questions", "content_value": "What game do you like to play?.Do you like tag or hide-and-seek more?.Do you like playing inside or outside?.Who do you like to play with?.What makes a game fun?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: School Day Mini Qs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Day Mini Qs', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'School routines', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you like at school?.What is your favorite school time (recess, lunch, class)?.What helps you listen to the teacher?.What do you do when you need help?.What do you do to be ready to learn?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Day Mini Qs',
    '{"lesson_name": "School Day Mini Qs", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "School routines"}, {"content_key": "rapid_questions", "content_value": "What do you like at school?.What is your favorite school time (recess, lunch, class)?.What helps you listen to the teacher?.What do you do when you need help?.What do you do to be ready to learn?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: Family Smiles Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Family Smiles Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Family & home', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Who lives with you at home?.What do you like doing with your family?.Who makes you laugh at home?.What is one nice thing you can say at home?.What makes home feel good?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Family Smiles Round',
    '{"lesson_name": "Family Smiles Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Family & home"}, {"content_key": "rapid_questions", "content_value": "Who lives with you at home?.What do you like doing with your family?.Who makes you laugh at home?.What is one nice thing you can say at home?.What makes home feel good?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: Feelings Quick Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Feelings Quick Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Feelings', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you feel right now?.What makes you feel happy?.What makes you feel calm?.What do you do when you feel upset?.Who helps you feel better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feelings Quick Check',
    '{"lesson_name": "Feelings Quick Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Feelings"}, {"content_key": "rapid_questions", "content_value": "How do you feel right now?.What makes you feel happy?.What makes you feel calm?.What do you do when you feel upset?.Who helps you feel better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Nature Spotter Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature Spotter Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Outdoors & nature', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Do you like the park or the beach more?.What do you see outside today?.What is your favorite weather?.What animal might you see outside?.What do you like to do outside?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature Spotter Round',
    '{"lesson_name": "Nature Spotter Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Outdoors & nature"}, {"content_key": "rapid_questions", "content_value": "Do you like the park or the beach more?.What do you see outside today?.What is your favorite weather?.What animal might you see outside?.What do you like to do outside?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: Kind Helper Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Kind Helper Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Helping others', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How can you help a friend today?.What do you say when someone is sad?.What do you do if someone is left out?.What do you say to be polite?.What does “being kind” look like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kind Helper Flash',
    '{"lesson_name": "Kind Helper Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Helping others"}, {"content_key": "rapid_questions", "content_value": "How can you help a friend today?.What do you say when someone is sad?.What do you do if someone is left out?.What do you say to be polite?.What does \u201cbeing kind\u201d look like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: Dream & Try Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Dream & Try Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Dreams & goals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you want to be when you grow up?.What is one thing you want to learn?.What is something you want to try?.What makes you feel proud?.What do you do when something is hard?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dream & Try Round',
    '{"lesson_name": "Dream & Try Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Dreams & goals"}, {"content_key": "rapid_questions", "content_value": "What do you want to be when you grow up?.What is one thing you want to learn?.What is something you want to try?.What makes you feel proud?.What do you do when something is hard?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: Favorites + One Detail
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Favorites + One Detail', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite color, and where do you see it?.What is your favorite animal, and what does it do?.What is your favorite snack, and when do you eat it?.What is your favorite game, and who do you play with?.What is your favorite place, and why do you like it?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Favorites + One Detail',
    '{"lesson_name": "Favorites + One Detail", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences"}, {"content_key": "rapid_questions", "content_value": "What is your favorite color, and where do you see it?.What is your favorite animal, and what does it do?.What is your favorite snack, and when do you eat it?.What is your favorite game, and who do you play with?.What is your favorite place, and why do you like it?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: Feelings + What Helps
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Feelings + What Helps', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Feelings & calming', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When you feel mad, what helps you calm down?.When you feel scared, who helps you?.When you feel excited, what do you want to do?.When you feel tired, what helps your body?.When you feel proud, what happened?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feelings + What Helps',
    '{"lesson_name": "Feelings + What Helps", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Feelings & calming"}, {"content_key": "rapid_questions", "content_value": "When you feel mad, what helps you calm down?.When you feel scared, who helps you?.When you feel excited, what do you want to do?.When you feel tired, what helps your body?.When you feel proud, what happened?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: Friendship Mini Moments
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Mini Moments', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friends', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes a good friend?.How do you share a toy kindly?.What do you say if you bump into someone?.What do you do if a friend says “no”?.What do you do if you hurt someone’s feelings?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Mini Moments',
    '{"lesson_name": "Friendship Mini Moments", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friends"}, {"content_key": "rapid_questions", "content_value": "What makes a good friend?.How do you share a toy kindly?.What do you say if you bump into someone?.What do you do if a friend says \u201cno\u201d?.What do you do if you hurt someone\u2019s feelings?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: School Choices Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Choices Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning routines', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you pay attention in class?.What do you do when you don’t understand?.What do you do to finish your work?.What do you do before you talk in class?.What helps you be brave to try?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Choices Round',
    '{"lesson_name": "School Choices Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning routines"}, {"content_key": "rapid_questions", "content_value": "What helps you pay attention in class?.What do you do when you don\u2019t understand?.What do you do to finish your work?.What do you do before you talk in class?.What helps you be brave to try?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: Home Helpers Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Home Helpers Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Family teamwork', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one job you can do at home?.Who do you help at home, and how?.What is one rule at home, and why?.What do you do when you disagree at home?.What is one kind thing you can do today?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Home Helpers Round',
    '{"lesson_name": "Home Helpers Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Family teamwork"}, {"content_key": "rapid_questions", "content_value": "What is one job you can do at home?.Who do you help at home, and how?.What is one rule at home, and why?.What do you do when you disagree at home?.What is one kind thing you can do today?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: Outdoor Fun + Safety
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Outdoor Fun + Safety', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Outdoors', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you like to do outside, and where?.What do you wear when it is cold?.What do you do to stay safe near a road?.What do you do to help nature?.What is your favorite season, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Outdoor Fun + Safety',
    '{"lesson_name": "Outdoor Fun + Safety", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Outdoors"}, {"content_key": "rapid_questions", "content_value": "What do you like to do outside, and where?.What do you wear when it is cold?.What do you do to stay safe near a road?.What do you do to help nature?.What is your favorite season, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: Food Choices + Sharing
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Food Choices + Sharing', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Food & manners', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What food do you like, and who makes it?.What do you say when someone gives you food?.What do you do if you don’t like the food?.What do you share at snack time?.What is a healthy snack you enjoy?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Food Choices + Sharing',
    '{"lesson_name": "Food Choices + Sharing", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Food & manners"}, {"content_key": "rapid_questions", "content_value": "What food do you like, and who makes it?.What do you say when someone gives you food?.What do you do if you don\u2019t like the food?.What do you share at snack time?.What is a healthy snack you enjoy?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: Imagination Quick Stories
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Imagination Quick Stories', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Imagination', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you had a superpower, what would it be and why?.If you could fly, where would you go?.If you had a magic pet, what would it do?.If your backpack could talk, what would it say?.If you found a secret door, where would it lead?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Imagination Quick Stories',
    '{"lesson_name": "Imagination Quick Stories", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Imagination"}, {"content_key": "rapid_questions", "content_value": "If you had a superpower, what would it be and why?.If you could fly, where would you go?.If you had a magic pet, what would it do?.If your backpack could talk, what would it say?.If you found a secret door, where would it lead?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: Kind Words Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Kind Words Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Kind communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kind words can you say to a friend?.What do you say when someone is sad?.What do you say when someone helps you?.What do you say when you want to join a game?.What do you say after you make a mistake?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kind Words Round',
    '{"lesson_name": "Kind Words Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Kind communication"}, {"content_key": "rapid_questions", "content_value": "What kind words can you say to a friend?.What do you say when someone is sad?.What do you say when someone helps you?.What do you say when you want to join a game?.What do you say after you make a mistake?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: Try Again Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Try Again Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth mindset', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when something is hard?.What helps you try again?.What is something you learned by practicing?.Who cheers you on?.What will you practice this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Try Again Round',
    '{"lesson_name": "Try Again Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Growth mindset"}, {"content_key": "rapid_questions", "content_value": "What do you do when something is hard?.What helps you try again?.What is something you learned by practicing?.Who cheers you on?.What will you practice this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 21: Quick “Why” Starters
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Quick “Why” Starters', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences + simple reasons', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite color? Why?.What game do you like best? Why?.What food do you enjoy? Why?.What place makes you happy? Why?.What animal do you like? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Quick “Why” Starters',
    '{"lesson_name": "Quick \u201cWhy\u201d Starters", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences + simple reasons"}, {"content_key": "rapid_questions", "content_value": "What is your favorite color? Why?.What game do you like best? Why?.What food do you enjoy? Why?.What place makes you happy? Why?.What animal do you like? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 22: Calm Plan Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm Plan Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when you feel mad? Why does it help?.What do you do when you feel nervous? Why?.What do you do when you feel tired? Why?.What do you do when you feel upset? Why?.What do you do when you feel excited? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm Plan Sprint',
    '{"lesson_name": "Calm Plan Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping skills"}, {"content_key": "rapid_questions", "content_value": "What do you do when you feel mad? Why does it help?.What do you do when you feel nervous? Why?.What do you do when you feel tired? Why?.What do you do when you feel upset? Why?.What do you do when you feel excited? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 23: Helping Choices Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Helping Choices Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Kind actions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If someone is alone, what can you do? Why?.If someone drops something, what can you do? Why?.If someone is sad, what can you say? Why?.If someone is new, what can you do? Why?.If you made a mistake, what can you do? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping Choices Round',
    '{"lesson_name": "Helping Choices Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Kind actions"}, {"content_key": "rapid_questions", "content_value": "If someone is alone, what can you do? Why?.If someone drops something, what can you do? Why?.If someone is sad, what can you say? Why?.If someone is new, what can you do? Why?.If you made a mistake, what can you do? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 24: Friendship Fix-It
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Fix-It', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repairing moments', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you take a turn too long, what do you do? Why?.If you interrupt someone, what do you do? Why?.If you say something unkind, what do you do? Why?.If you feel left out, what do you say? Why?.If a friend feels upset, what do you do? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Fix-It',
    '{"lesson_name": "Friendship Fix-It", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repairing moments"}, {"content_key": "rapid_questions", "content_value": "If you take a turn too long, what do you do? Why?.If you interrupt someone, what do you do? Why?.If you say something unkind, what do you do? Why?.If you feel left out, what do you say? Why?.If a friend feels upset, what do you do? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 25: School Bravery Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Bravery Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Trying at school', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you don’t know an answer, what do you do? Why?.If work feels hard, what do you do? Why?.If you make a mistake, what do you do? Why?.If you need help, who do you ask? Why?.If you feel shy, what can you try? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Bravery Round',
    '{"lesson_name": "School Bravery Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Trying at school"}, {"content_key": "rapid_questions", "content_value": "If you don\u2019t know an answer, what do you do? Why?.If work feels hard, what do you do? Why?.If you make a mistake, what do you do? Why?.If you need help, who do you ask? Why?.If you feel shy, what can you try? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 26: Home Respect Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Home Respect Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Family respect', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one way to show respect at home? Why?.What do you do when someone is talking? Why?.What is one way to help at home? Why?.What do you say when you disagree? Why?.What is one kind thing you can do today? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Home Respect Round',
    '{"lesson_name": "Home Respect Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Family respect"}, {"content_key": "rapid_questions", "content_value": "What is one way to show respect at home? Why?.What do you do when someone is talking? Why?.What is one way to help at home? Why?.What do you say when you disagree? Why?.What is one kind thing you can do today? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 27: Nature Care Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature Care Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Taking care of nature', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How can you help keep a park clean? Why?.What do you do with trash outside? Why?.How do you treat animals gently? Why?.What do you do to save water? Why?.Why is nature important to you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature Care Round',
    '{"lesson_name": "Nature Care Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Taking care of nature"}, {"content_key": "rapid_questions", "content_value": "How can you help keep a park clean? Why?.What do you do with trash outside? Why?.How do you treat animals gently? Why?.What do you do to save water? Why?.Why is nature important to you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 28: Sharing Fairness Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sharing Fairness Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fair play', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does “fair” mean in a game? Why?.What do you do if someone cuts in line? Why?.What do you do if you want the same toy? Why?.What do you do when you win? Why?.What do you do when you lose? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sharing Fairness Round',
    '{"lesson_name": "Sharing Fairness Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fair play"}, {"content_key": "rapid_questions", "content_value": "What does \u201cfair\u201d mean in a game? Why?.What do you do if someone cuts in line? Why?.What do you do if you want the same toy? Why?.What do you do when you win? Why?.What do you do when you lose? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 29: Feeling + Action Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Feeling + Action Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotions to actions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When you feel proud, what do you do next? Why?.When you feel sad, what helps you? Why?.When you feel angry, what do you choose? Why?.When you feel scared, what do you do? Why?.When you feel happy, who do you share with? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feeling + Action Round',
    '{"lesson_name": "Feeling + Action Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotions to actions"}, {"content_key": "rapid_questions", "content_value": "When you feel proud, what do you do next? Why?.When you feel sad, what helps you? Why?.When you feel angry, what do you choose? Why?.When you feel scared, what do you do? Why?.When you feel happy, who do you share with? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 30: Dream Steps Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Dream Steps Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 1, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals & steps', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you want to learn? What step will you take?.What is something you want to practice? What step will you take?.What is something you want to do better? What step will you take?.What is something you want to make? What step will you take?.What is something you want to be brave about? What step will you take?.✅ MODULE 3 — GRADE 2', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dream Steps Round',
    '{"lesson_name": "Dream Steps Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 1, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals & steps"}, {"content_key": "rapid_questions", "content_value": "What is something you want to learn? What step will you take?.What is something you want to practice? What step will you take?.What is something you want to do better? What step will you take?.What is something you want to make? What step will you take?.What is something you want to be brave about? What step will you take?.\u2705 MODULE 3 \u2014 GRADE 2"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 31: Bright Choices Burst
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Bright Choices Burst', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Favorites & choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite color this week?.What is your favorite animal today?.What is your favorite snack right now?.What is your favorite game at recess?.What is your favorite book or story?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Bright Choices Burst',
    '{"lesson_name": "Bright Choices Burst", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Favorites & choices"}, {"content_key": "rapid_questions", "content_value": "What is your favorite color this week?.What is your favorite animal today?.What is your favorite snack right now?.What is your favorite game at recess?.What is your favorite book or story?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 32: Fun Hobby Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fun Hobby Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Hobbies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a hobby you enjoy?.What do you like to build or make?.What do you like to draw or design?.What do you like to do after school?.What hobby makes you feel proud?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fun Hobby Flash',
    '{"lesson_name": "Fun Hobby Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Hobbies"}, {"content_key": "rapid_questions", "content_value": "What is a hobby you enjoy?.What do you like to build or make?.What do you like to draw or design?.What do you like to do after school?.What hobby makes you feel proud?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 33: School Routine Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Routine Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'School day', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do first at school?.What helps you listen during class?.What do you do at recess?.What do you eat for lunch?.What do you do when class ends?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Routine Dash',
    '{"lesson_name": "School Routine Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "School day"}, {"content_key": "rapid_questions", "content_value": "What do you do first at school?.What helps you listen during class?.What do you do at recess?.What do you eat for lunch?.What do you do when class ends?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 34: Friendship Fun Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Fun Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friends', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you like doing with friends?.What is one kind thing you can say?.How do you share fairly?.What do you do if a friend is sad?.What makes a friend feel welcome?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Fun Round',
    '{"lesson_name": "Friendship Fun Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friends"}, {"content_key": "rapid_questions", "content_value": "What do you like doing with friends?.What is one kind thing you can say?.How do you share fairly?.What do you do if a friend is sad?.What makes a friend feel welcome?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 35: Feeling Words Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Feeling Words Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When do you feel excited?.When do you feel calm?.When do you feel worried?.When do you feel proud?.What helps you feel better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feeling Words Sprint',
    '{"lesson_name": "Feeling Words Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotions"}, {"content_key": "rapid_questions", "content_value": "When do you feel excited?.When do you feel calm?.When do you feel worried?.When do you feel proud?.What helps you feel better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 36: Animal Facts Quickfire
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Animal Facts Quickfire', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Animals & nature', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What animal lives in water?.What animal lives on land?.What animal would you like to protect?.What animal do you think is clever?.What animal makes you laugh?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Animal Facts Quickfire',
    '{"lesson_name": "Animal Facts Quickfire", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Animals & nature"}, {"content_key": "rapid_questions", "content_value": "What animal lives in water?.What animal lives on land?.What animal would you like to protect?.What animal do you think is clever?.What animal makes you laugh?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 37: Yummy & Healthy Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Yummy & Healthy Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Food choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a healthy breakfast you like?.What fruit do you enjoy?.What vegetable do you like?.What drink is good for your body?.What snack is good for energy?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Yummy & Healthy Dash',
    '{"lesson_name": "Yummy & Healthy Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Food choices"}, {"content_key": "rapid_questions", "content_value": "What is a healthy breakfast you like?.What fruit do you enjoy?.What vegetable do you like?.What drink is good for your body?.What snack is good for energy?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 38: Outdoor Adventure Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Outdoor Adventure Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Outdoors', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Do you like hiking or biking more?.What do you like doing at the park?.What game do you play outside?.What weather do you like best?.What do you notice in nature?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Outdoor Adventure Round',
    '{"lesson_name": "Outdoor Adventure Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Outdoors"}, {"content_key": "rapid_questions", "content_value": "Do you like hiking or biking more?.What do you like doing at the park?.What game do you play outside?.What weather do you like best?.What do you notice in nature?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 39: Home Team Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Home Team Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Family & home', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What job do you help with at home?.Who do you talk to at home?.What makes your home feel safe?.What rule helps your home stay peaceful?.What is one family activity you like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Home Team Round',
    '{"lesson_name": "Home Team Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Family & home"}, {"content_key": "rapid_questions", "content_value": "What job do you help with at home?.Who do you talk to at home?.What makes your home feel safe?.What rule helps your home stay peaceful?.What is one family activity you like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 40: Big Dreams Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Big Dreams Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you want to learn this month?.What do you want to get better at?.What do you want to try for the first time?.What makes you feel brave?.What will you practice this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Big Dreams Dash',
    '{"lesson_name": "Big Dreams Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals"}, {"content_key": "rapid_questions", "content_value": "What do you want to learn this month?.What do you want to get better at?.What do you want to try for the first time?.What makes you feel brave?.What will you practice this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 41: Favorites + Because
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Favorites + Because', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences + reasons', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite color, and why?.What is your favorite animal, and why?.What is your favorite snack, and why?.What is your favorite game, and why?.What is your favorite place, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Favorites + Because',
    '{"lesson_name": "Favorites + Because", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences + reasons"}, {"content_key": "rapid_questions", "content_value": "What is your favorite color, and why?.What is your favorite animal, and why?.What is your favorite snack, and why?.What is your favorite game, and why?.What is your favorite place, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 42: Calm-Down Tools Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm-Down Tools Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you calm down when you’re upset?.What helps you calm down when you’re angry?.What helps you calm down when you’re nervous?.What helps you calm down when you’re too excited?.Who can help you calm down, and how?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm-Down Tools Round',
    '{"lesson_name": "Calm-Down Tools Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping skills"}, {"content_key": "rapid_questions", "content_value": "What helps you calm down when you\u2019re upset?.What helps you calm down when you\u2019re angry?.What helps you calm down when you\u2019re nervous?.What helps you calm down when you\u2019re too excited?.Who can help you calm down, and how?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 43: Friendly Words & Actions
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendly Words & Actions', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Kind communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you say to invite someone to play?.What do you say when you want a turn?.What do you say when you disagree kindly?.What do you say when you hurt someone’s feelings?.What do you say when someone helps you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendly Words & Actions',
    '{"lesson_name": "Friendly Words & Actions", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Kind communication"}, {"content_key": "rapid_questions", "content_value": "What do you say to invite someone to play?.What do you say when you want a turn?.What do you say when you disagree kindly?.What do you say when you hurt someone\u2019s feelings?.What do you say when someone helps you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 44: Try-It-Again Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Try-It-Again Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Persistence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when a puzzle is hard?.What do you do when reading feels tricky?.What do you do when you lose a game?.What do you do when you make a mistake?.What do you say to yourself to try again?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Try-It-Again Round',
    '{"lesson_name": "Try-It-Again Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Persistence"}, {"content_key": "rapid_questions", "content_value": "What do you do when a puzzle is hard?.What do you do when reading feels tricky?.What do you do when you lose a game?.What do you do when you make a mistake?.What do you say to yourself to try again?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 45: School Success Mini Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Success Mini Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you stay focused in class?.What helps you remember directions?.What do you do when you don’t understand?.What helps you finish your work?.What makes you feel proud at school?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Success Mini Round',
    '{"lesson_name": "School Success Mini Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning habits"}, {"content_key": "rapid_questions", "content_value": "What helps you stay focused in class?.What helps you remember directions?.What do you do when you don\u2019t understand?.What helps you finish your work?.What makes you feel proud at school?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 46: Fair Play Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Play Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Sharing & fairness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does “fair” mean in a game?.What do you do if someone cuts in line?.What do you do if two people want the same thing?.What do you do if someone always wins?.What do you do if someone is left out?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Play Round',
    '{"lesson_name": "Fair Play Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Sharing & fairness"}, {"content_key": "rapid_questions", "content_value": "What does \u201cfair\u201d mean in a game?.What do you do if someone cuts in line?.What do you do if two people want the same thing?.What do you do if someone always wins?.What do you do if someone is left out?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 47: Helping at Home Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Helping at Home Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Family teamwork', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How can you help at home today?.Why is helping important?.What do you do if you forget your job?.What do you do if you’re asked to help and you don’t want to?.How do you show respect at home?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping at Home Round',
    '{"lesson_name": "Helping at Home Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Family teamwork"}, {"content_key": "rapid_questions", "content_value": "How can you help at home today?.Why is helping important?.What do you do if you forget your job?.What do you do if you\u2019re asked to help and you don\u2019t want to?.How do you show respect at home?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 48: Nature Care Mini Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature Care Mini Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Caring for Earth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How can you help keep a park clean?.Why should we not litter?.How can you save water at home?.How can you be gentle with animals?.What is one way to help nature this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature Care Mini Round',
    '{"lesson_name": "Nature Care Mini Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Caring for Earth"}, {"content_key": "rapid_questions", "content_value": "How can you help keep a park clean?.Why should we not litter?.How can you save water at home?.How can you be gentle with animals?.What is one way to help nature this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 49: Brave Moments Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Brave Moments Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Confidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When do you feel brave?.What helps you speak up?.What helps you try something new?.Who helps you feel confident?.What is one brave thing you can do tomorrow?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Brave Moments Round',
    '{"lesson_name": "Brave Moments Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Confidence"}, {"content_key": "rapid_questions", "content_value": "When do you feel brave?.What helps you speak up?.What helps you try something new?.Who helps you feel confident?.What is one brave thing you can do tomorrow?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 50: Goal Steps Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goal Steps Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals + steps', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one goal you have for this week?.What is step one for that goal?.What could make the goal hard?.What could help you keep going?.How will you celebrate when you finish?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goal Steps Round',
    '{"lesson_name": "Goal Steps Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals + steps"}, {"content_key": "rapid_questions", "content_value": "What is one goal you have for this week?.What is step one for that goal?.What could make the goal hard?.What could help you keep going?.How will you celebrate when you finish?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 51: Choices + Feelings
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choices + Feelings', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Decisions & feelings', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What activity do you choose when you feel sad? Why?.What activity do you choose when you feel excited? Why?.What activity do you choose when you feel mad? Why?.What activity do you choose when you feel tired? Why?.What activity do you choose when you feel worried? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choices + Feelings',
    '{"lesson_name": "Choices + Feelings", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Decisions & feelings"}, {"content_key": "rapid_questions", "content_value": "What activity do you choose when you feel sad? Why?.What activity do you choose when you feel excited? Why?.What activity do you choose when you feel mad? Why?.What activity do you choose when you feel tired? Why?.What activity do you choose when you feel worried? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 52: Friendship Problem-Solving
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Problem-Solving', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If a friend says “That’s not fair,” what do you say? Why?.If you accidentally hurt a friend’s feelings, what do you do? Why?.If two friends argue, what can you do? Why?.If you feel left out, what can you say? Why?.If a friend won’t share, what can you do? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Problem-Solving',
    '{"lesson_name": "Friendship Problem-Solving", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair skills"}, {"content_key": "rapid_questions", "content_value": "If a friend says \u201cThat\u2019s not fair,\u201d what do you say? Why?.If you accidentally hurt a friend\u2019s feelings, what do you do? Why?.If two friends argue, what can you do? Why?.If you feel left out, what can you say? Why?.If a friend won\u2019t share, what can you do? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 53: Patience & Waiting Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Patience & Waiting Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Self-control', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when you must wait your turn? Why?.What do you do when you feel frustrated? Why?.What do you do when you want something now? Why?.What do you do when a task takes long? Why?.What helps you stay calm while waiting? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Patience & Waiting Round',
    '{"lesson_name": "Patience & Waiting Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Self-control"}, {"content_key": "rapid_questions", "content_value": "What do you do when you must wait your turn? Why?.What do you do when you feel frustrated? Why?.What do you do when you want something now? Why?.What do you do when a task takes long? Why?.What helps you stay calm while waiting? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 54: Kindness With Courage
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Kindness With Courage', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Standing up kindly', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If someone is teased, what can you do? Why?.If someone is alone, what can you do? Why?.If someone is new, what can you do? Why?.If someone is sad, what can you say? Why?.If you see a problem, who can you tell? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kindness With Courage',
    '{"lesson_name": "Kindness With Courage", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Standing up kindly"}, {"content_key": "rapid_questions", "content_value": "If someone is teased, what can you do? Why?.If someone is alone, what can you do? Why?.If someone is new, what can you do? Why?.If someone is sad, what can you say? Why?.If you see a problem, who can you tell? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 55: Learning When It’s Hard
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning When It’s Hard', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Persistence at school', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If reading is hard, what do you try first? Why?.If math is hard, what do you try first? Why?.If you get something wrong, what do you do next? Why?.If you feel stuck, who do you ask? Why?.If you feel like quitting, what helps you continue? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning When It’s Hard',
    '{"lesson_name": "Learning When It\u2019s Hard", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Persistence at school"}, {"content_key": "rapid_questions", "content_value": "If reading is hard, what do you try first? Why?.If math is hard, what do you try first? Why?.If you get something wrong, what do you do next? Why?.If you feel stuck, who do you ask? Why?.If you feel like quitting, what helps you continue? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 56: Fair Rules Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Rules Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fairness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do we have rules at school?.What rule feels important to you, and why?.What should happen if someone breaks a rule, and why?.What is a fair way to take turns, and why?.What is a fair way to share, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Rules Round',
    '{"lesson_name": "Fair Rules Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fairness"}, {"content_key": "rapid_questions", "content_value": "Why do we have rules at school?.What rule feels important to you, and why?.What should happen if someone breaks a rule, and why?.What is a fair way to take turns, and why?.What is a fair way to share, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 57: Home Harmony Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Home Harmony Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Family peace', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when you disagree at home? Why?.What do you do when someone is upset at home? Why?.What helps your home stay peaceful? Why?.What do you do if you forget a promise? Why?.How do you show respect to adults and siblings? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Home Harmony Round',
    '{"lesson_name": "Home Harmony Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Family peace"}, {"content_key": "rapid_questions", "content_value": "What do you do when you disagree at home? Why?.What do you do when someone is upset at home? Why?.What helps your home stay peaceful? Why?.What do you do if you forget a promise? Why?.How do you show respect to adults and siblings? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 58: Nature Responsibility Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature Responsibility Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Caring for Earth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why should we recycle?.What can kids do to help the Earth, and why?.Why should we save water?.Why should we be gentle with animals?.What is one nature rule you would make, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature Responsibility Round',
    '{"lesson_name": "Nature Responsibility Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Caring for Earth"}, {"content_key": "rapid_questions", "content_value": "Why should we recycle?.What can kids do to help the Earth, and why?.Why should we save water?.Why should we be gentle with animals?.What is one nature rule you would make, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 59: Confidence Builder Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Confidence Builder Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Self-belief', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you’re good at? Why?.What is something you’re learning? Why does it matter?.What do you tell yourself before trying? Why?.Who helps you feel confident? Why?.What is a brave choice you can make this week? Why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Confidence Builder Round',
    '{"lesson_name": "Confidence Builder Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Self-belief"}, {"content_key": "rapid_questions", "content_value": "What is something you\u2019re good at? Why?.What is something you\u2019re learning? Why does it matter?.What do you tell yourself before trying? Why?.Who helps you feel confident? Why?.What is a brave choice you can make this week? Why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 60: Dream Plan Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Dream Plan Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 2, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals & planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a goal you want this month? What is step one?.What can make that goal hard? What can help?.Who can support your goal? How?.What will you practice to reach it? Why?.How will you know you improved?.✅ MODULE 3 — GRADE 3', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dream Plan Round',
    '{"lesson_name": "Dream Plan Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 2, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals & planning"}, {"content_key": "rapid_questions", "content_value": "What is a goal you want this month? What is step one?.What can make that goal hard? What can help?.Who can support your goal? How?.What will you practice to reach it? Why?.How will you know you improved?.\u2705 MODULE 3 \u2014 GRADE 3"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 61: Morning Moves Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Morning Moves Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Morning routine & readiness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do first after waking up?.What helps you get ready faster?.What do you eat or drink in the morning?.What do you pack for school?.What helps you start the day calm?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Morning Moves Sprint',
    '{"lesson_name": "Morning Moves Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Morning routine & readiness"}, {"content_key": "rapid_questions", "content_value": "What do you do first after waking up?.What helps you get ready faster?.What do you eat or drink in the morning?.What do you pack for school?.What helps you start the day calm?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 62: Recess Choices Burst
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Recess Choices Burst', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Play decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What game do you choose at recess?.Who do you like to play with?.How do you take turns fairly?.What do you do if rules are confusing?.What makes recess fun for everyone?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recess Choices Burst',
    '{"lesson_name": "Recess Choices Burst", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Play decisions"}, {"content_key": "rapid_questions", "content_value": "What game do you choose at recess?.Who do you like to play with?.How do you take turns fairly?.What do you do if rules are confusing?.What makes recess fun for everyone?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 63: Classroom Helper Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Classroom Helper Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Being responsible at school', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one classroom job you can do?.How do you help your teacher?.How do you help a classmate?.What do you do when you finish early?.What does “responsible” look like in class?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Classroom Helper Flash',
    '{"lesson_name": "Classroom Helper Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Being responsible at school"}, {"content_key": "rapid_questions", "content_value": "What is one classroom job you can do?.How do you help your teacher?.How do you help a classmate?.What do you do when you finish early?.What does \u201cresponsible\u201d look like in class?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 64: Book & Story Spark
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Book & Story Spark', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reading preferences', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kind of stories do you like best?.Who is a character you remember?.Where does a good story usually happen?.What makes a story exciting?.What book would you recommend?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Book & Story Spark',
    '{"lesson_name": "Book & Story Spark", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Reading preferences"}, {"content_key": "rapid_questions", "content_value": "What kind of stories do you like best?.Who is a character you remember?.Where does a good story usually happen?.What makes a story exciting?.What book would you recommend?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 65: Food Fuel Picks
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Food Fuel Picks', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Meals & energy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What lunch helps you feel full of energy?.What snack helps you focus?.What drink is best when you feel thirsty?.What food do you share easily?.What food reminds you of home?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Food Fuel Picks',
    '{"lesson_name": "Food Fuel Picks", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Meals & energy"}, {"content_key": "rapid_questions", "content_value": "What lunch helps you feel full of energy?.What snack helps you focus?.What drink is best when you feel thirsty?.What food do you share easily?.What food reminds you of home?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 66: Feelings in the Middle
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Feelings in the Middle', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotions during the day', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When do you feel proud at school?.When do you feel nervous?.When do you feel calm?.When do you feel frustrated?.What helps you feel better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feelings in the Middle',
    '{"lesson_name": "Feelings in the Middle", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotions during the day"}, {"content_key": "rapid_questions", "content_value": "When do you feel proud at school?.When do you feel nervous?.When do you feel calm?.When do you feel frustrated?.What helps you feel better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 67: Nature Noticing Quest
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature Noticing Quest', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Observing outdoors', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you notice in the sky today?.What do you notice on the ground outside?.What animal might you see near your home?.What sound do you hear outside?.What do you do to keep nature clean?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature Noticing Quest',
    '{"lesson_name": "Nature Noticing Quest", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Observing outdoors"}, {"content_key": "rapid_questions", "content_value": "What do you notice in the sky today?.What do you notice on the ground outside?.What animal might you see near your home?.What sound do you hear outside?.What do you do to keep nature clean?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 68: Kind Words Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Kind Words Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Polite communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you say to join a game?.What do you say when someone helps you?.What do you say when you disagree kindly?.What do you say after a mistake?.What do you say to cheer someone up?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kind Words Pop',
    '{"lesson_name": "Kind Words Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Polite communication"}, {"content_key": "rapid_questions", "content_value": "What do you say to join a game?.What do you say when someone helps you?.What do you say when you disagree kindly?.What do you say after a mistake?.What do you say to cheer someone up?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 69: Choice Time Quickstep
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choice Time Quickstep', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Decision-making', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if you forget your homework?.What do you do if you’re running late?.What do you do if someone breaks a rule?.What do you do if you feel stuck?.What do you do if you need help?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choice Time Quickstep',
    '{"lesson_name": "Choice Time Quickstep", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Decision-making"}, {"content_key": "rapid_questions", "content_value": "What do you do if you forget your homework?.What do you do if you\u2019re running late?.What do you do if someone breaks a rule?.What do you do if you feel stuck?.What do you do if you need help?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 70: Mini Goals Launch
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Mini Goals Launch', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Small goals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one goal for this week?.What is one thing you will practice?.What is one thing you want to improve?.What helps you keep going?.How will you celebrate a small win?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mini Goals Launch',
    '{"lesson_name": "Mini Goals Launch", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Small goals"}, {"content_key": "rapid_questions", "content_value": "What is one goal for this week?.What is one thing you will practice?.What is one thing you want to improve?.What helps you keep going?.How will you celebrate a small win?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 71: Favorites With Reasons
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Favorites With Reasons', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences + “because”', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite subject, and why?.What game do you like most, and why?.What food do you enjoy, and why?.What place makes you happy, and why?.What activity helps you relax, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Favorites With Reasons',
    '{"lesson_name": "Favorites With Reasons", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences + \u201cbecause\u201d"}, {"content_key": "rapid_questions", "content_value": "What is your favorite subject, and why?.What game do you like most, and why?.What food do you enjoy, and why?.What place makes you happy, and why?.What activity helps you relax, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 72: Calm-Down Strategy Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm-Down Strategy Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping tools', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when you feel angry, and why does it work?.What do you do when you feel worried, and why?.What do you do when you feel distracted, and why?.What do you do when you feel embarrassed, and why?.What do you do when you feel excited, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm-Down Strategy Sprint',
    '{"lesson_name": "Calm-Down Strategy Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping tools"}, {"content_key": "rapid_questions", "content_value": "What do you do when you feel angry, and why does it work?.What do you do when you feel worried, and why?.What do you do when you feel distracted, and why?.What do you do when you feel embarrassed, and why?.What do you do when you feel excited, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 73: Friendship Builders
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Builders', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Keeping friends', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes a friend trustworthy, and why?.How do you solve a small argument with a friend?.What is a kind way to say “no”?.How do you include someone new at school?.How do you show you care about a friend?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Builders',
    '{"lesson_name": "Friendship Builders", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Keeping friends"}, {"content_key": "rapid_questions", "content_value": "What makes a friend trustworthy, and why?.How do you solve a small argument with a friend?.What is a kind way to say \u201cno\u201d?.How do you include someone new at school?.How do you show you care about a friend?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 74: Learning Tricks That Work
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning Tricks That Work', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Study habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you remember directions?.What helps you stay focused during work time?.What do you do when you don’t understand a problem?.What helps you finish long assignments?.What helps you prepare for a quiz?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning Tricks That Work',
    '{"lesson_name": "Learning Tricks That Work", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Study habits"}, {"content_key": "rapid_questions", "content_value": "What helps you remember directions?.What helps you stay focused during work time?.What do you do when you don\u2019t understand a problem?.What helps you finish long assignments?.What helps you prepare for a quiz?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 75: Community Kindness Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community Kindness Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Helping others', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How can you help someone who is left out?.What is a kind thing to do in a cafeteria line?.What is a kind thing to do on a bus or car ride?.During a neighborhood food drive, how could you help?.What does respect look like in your community?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community Kindness Check',
    '{"lesson_name": "Community Kindness Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Helping others"}, {"content_key": "rapid_questions", "content_value": "How can you help someone who is left out?.What is a kind thing to do in a cafeteria line?.What is a kind thing to do on a bus or car ride?.During a neighborhood food drive, how could you help?.What does respect look like in your community?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 76: Fairness & Turn-Taking
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness & Turn-Taking', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fair play', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does “fair” mean to you, and why?.What is a fair way to take turns in a game?.What do you do if someone keeps changing the rules?.What do you do if someone wins and brags?.What do you do if you lose and feel upset?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness & Turn-Taking',
    '{"lesson_name": "Fairness & Turn-Taking", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fair play"}, {"content_key": "rapid_questions", "content_value": "What does \u201cfair\u201d mean to you, and why?.What is a fair way to take turns in a game?.What do you do if someone keeps changing the rules?.What do you do if someone wins and brags?.What do you do if you lose and feel upset?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 77: Imagination With Rules
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Imagination With Rules', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Creative thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you could design a new playground, what would you add and why?.If you could invent a new holiday, what would it celebrate and why?.During Lunar New Year, what wish would you share and why?.If your backpack could give advice, what would it say and why?.If you had a helpful robot, what would it do and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Imagination With Rules',
    '{"lesson_name": "Imagination With Rules", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Creative thinking"}, {"content_key": "rapid_questions", "content_value": "If you could design a new playground, what would you add and why?.If you could invent a new holiday, what would it celebrate and why?.During Lunar New Year, what wish would you share and why?.If your backpack could give advice, what would it say and why?.If you had a helpful robot, what would it do and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 78: Strong Feelings, Smart Choices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Strong Feelings, Smart Choices', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotion → action', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when you feel jealous, and why?.What do you do when you feel disappointed, and why?.What do you do when you feel proud, and why?.What do you do when you feel nervous, and why?.What do you do when you feel overwhelmed, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Strong Feelings, Smart Choices',
    '{"lesson_name": "Strong Feelings, Smart Choices", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotion \u2192 action"}, {"content_key": "rapid_questions", "content_value": "What do you do when you feel jealous, and why?.What do you do when you feel disappointed, and why?.What do you do when you feel proud, and why?.What do you do when you feel nervous, and why?.What do you do when you feel overwhelmed, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 79: Teamwork Moves
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork Moves', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Working together', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes a team work well, and why?.What role do you like on a team, and why?.What do you do if a teammate isn’t helping?.What do you do if your idea isn’t chosen?.What helps teams stay respectful?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Moves',
    '{"lesson_name": "Teamwork Moves", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Working together"}, {"content_key": "rapid_questions", "content_value": "What makes a team work well, and why?.What role do you like on a team, and why?.What do you do if a teammate isn\u2019t helping?.What do you do if your idea isn\u2019t chosen?.What helps teams stay respectful?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 80: Goal Steps Builder
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goal Steps Builder', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a goal for this month, and why is it important?.What is step one, and why?.What might make it hard, and why?.Who can help you, and how?.How will you know you improved?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goal Steps Builder',
    '{"lesson_name": "Goal Steps Builder", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Planning"}, {"content_key": "rapid_questions", "content_value": "What is a goal for this month, and why is it important?.What is step one, and why?.What might make it hard, and why?.Who can help you, and how?.How will you know you improved?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 81: Explain Your Choice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Explain Your Choice', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences + reasoning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What activity helps you relax, and why?.What school subject matters to you, and why?.What makes a good friend, and why?.What rule helps your class most, and why?.What habit helps you learn, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Explain Your Choice',
    '{"lesson_name": "Explain Your Choice", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences + reasoning"}, {"content_key": "rapid_questions", "content_value": "What activity helps you relax, and why?.What school subject matters to you, and why?.What makes a good friend, and why?.What rule helps your class most, and why?.What habit helps you learn, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 82: Fix-It Conversations
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fix-It Conversations', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Conflict repair', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you interrupt someone, what do you say, and why?.If you hurt feelings by accident, what do you do, and why?.If someone blames you unfairly, what do you say, and why?.If you’re left out, what do you say, and why?.If two friends argue, what can you do, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fix-It Conversations',
    '{"lesson_name": "Fix-It Conversations", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Conflict repair"}, {"content_key": "rapid_questions", "content_value": "If you interrupt someone, what do you say, and why?.If you hurt feelings by accident, what do you do, and why?.If someone blames you unfairly, what do you say, and why?.If you\u2019re left out, what do you say, and why?.If two friends argue, what can you do, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 83: Perspective Practice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Practice', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Seeing both sides', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone be quiet during group work?.Why might someone not share during recess?.Why might someone look upset after class?.During a cultural night at school, why might someone feel nervous?.Why is it helpful to ask questions before judging?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Practice',
    '{"lesson_name": "Perspective Practice", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Seeing both sides"}, {"content_key": "rapid_questions", "content_value": "Why might someone be quiet during group work?.Why might someone not share during recess?.Why might someone look upset after class?.During a cultural night at school, why might someone feel nervous?.Why is it helpful to ask questions before judging?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 84: Consequence Quick Think
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Consequence Quick Think', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Choices → results', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you skip directions, what might happen and why?.If you don’t study, what might happen and why?.If you lie, what might happen and why?.If you include someone new, what might happen and why?.If you apologize quickly, what might happen and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Consequence Quick Think',
    '{"lesson_name": "Consequence Quick Think", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Choices \u2192 results"}, {"content_key": "rapid_questions", "content_value": "If you skip directions, what might happen and why?.If you don\u2019t study, what might happen and why?.If you lie, what might happen and why?.If you include someone new, what might happen and why?.If you apologize quickly, what might happen and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 85: Resilience Micro-Plans
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience Micro-Plans', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Bouncing back', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When you fail, what’s your next step and why?.When you feel stuck, what strategy helps and why?.When you feel embarrassed, what helps you recover and why?.When you feel tired of trying, what keeps you going and why?.When you feel nervous, what brave action can you take and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience Micro-Plans',
    '{"lesson_name": "Resilience Micro-Plans", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Bouncing back"}, {"content_key": "rapid_questions", "content_value": "When you fail, what\u2019s your next step and why?.When you feel stuck, what strategy helps and why?.When you feel embarrassed, what helps you recover and why?.When you feel tired of trying, what keeps you going and why?.When you feel nervous, what brave action can you take and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 86: Fairness in Real Life
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness in Real Life', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fairness scenarios', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If one person gets extra turns, what’s fair and why?.If someone always chooses the game, what’s fair and why?.If someone cuts in line, what’s fair and why?.If a rule hurts someone’s feelings, what should change and why?.Why do fair rules help everyone?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness in Real Life',
    '{"lesson_name": "Fairness in Real Life", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fairness scenarios"}, {"content_key": "rapid_questions", "content_value": "If one person gets extra turns, what\u2019s fair and why?.If someone always chooses the game, what\u2019s fair and why?.If someone cuts in line, what\u2019s fair and why?.If a rule hurts someone\u2019s feelings, what should change and why?.Why do fair rules help everyone?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 87: Leadership in Small Moments
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership in Small Moments', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Leading kindly', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a kind way to lead a group, and why?.What do you do if your team is confused, and why?.What do you do if someone is ignored, and why?.During a Juneteenth community picnic, how would you include others, and why?.What makes people trust a leader, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership in Small Moments',
    '{"lesson_name": "Leadership in Small Moments", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Leading kindly"}, {"content_key": "rapid_questions", "content_value": "What is a kind way to lead a group, and why?.What do you do if your team is confused, and why?.What do you do if someone is ignored, and why?.During a Juneteenth community picnic, how would you include others, and why?.What makes people trust a leader, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 88: Big Feelings, Better Words
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Big Feelings, Better Words', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotional communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you explain anger without yelling, and why?.How do you explain sadness without shutting down, and why?.How do you explain disappointment kindly, and why?.How do you ask for space politely, and why?.How do you say “I need help” confidently, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Big Feelings, Better Words',
    '{"lesson_name": "Big Feelings, Better Words", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotional communication"}, {"content_key": "rapid_questions", "content_value": "How do you explain anger without yelling, and why?.How do you explain sadness without shutting down, and why?.How do you explain disappointment kindly, and why?.How do you ask for space politely, and why?.How do you say \u201cI need help\u201d confidently, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 89: Nature & Responsibility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature & Responsibility', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Caring for Earth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why should people recycle, and what happens if they don’t?.Why should we save water, and what happens if we waste it?.Why should we protect animals, and what happens if we don’t?.What should you do if you see trash outside, and why?.What is one nature rule you would teach others, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature & Responsibility',
    '{"lesson_name": "Nature & Responsibility", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Caring for Earth"}, {"content_key": "rapid_questions", "content_value": "Why should people recycle, and what happens if they don\u2019t?.Why should we save water, and what happens if we waste it?.Why should we protect animals, and what happens if we don\u2019t?.What should you do if you see trash outside, and why?.What is one nature rule you would teach others, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 90: Future Me Mini Vision
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Me Mini Vision', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals + identity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kind of person do you want to become, and why?.What skill do you want stronger next year, and why?.What habit do you want to build, and why?.What challenge will help you grow, and why?.What will you do this week to start, and why?.✅ MODULE 3 — GRADE 4', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Me Mini Vision',
    '{"lesson_name": "Future Me Mini Vision", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals + identity"}, {"content_key": "rapid_questions", "content_value": "What kind of person do you want to become, and why?.What skill do you want stronger next year, and why?.What habit do you want to build, and why?.What challenge will help you grow, and why?.What will you do this week to start, and why?.\u2705 MODULE 3 \u2014 GRADE 4"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 91: After-School Reset
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'After-School Reset', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Routines & balance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do right after school?.What helps you relax at home?.What helps you start homework?.What helps you stay organized?.What makes your evening better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'After-School Reset',
    '{"lesson_name": "After-School Reset", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Routines & balance"}, {"content_key": "rapid_questions", "content_value": "What do you do right after school?.What helps you relax at home?.What helps you start homework?.What helps you stay organized?.What makes your evening better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 92: Interest Explorer Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Interest Explorer Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Interests & hobbies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What hobby do you enjoy most?.What hobby do you want to try?.What hobby takes patience?.What hobby helps you feel proud?.What hobby would you teach a friend?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Interest Explorer Pop',
    '{"lesson_name": "Interest Explorer Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Interests & hobbies"}, {"content_key": "rapid_questions", "content_value": "What hobby do you enjoy most?.What hobby do you want to try?.What hobby takes patience?.What hobby helps you feel proud?.What hobby would you teach a friend?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 93: Reading Detective Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reading Detective Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Books & comprehension', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kind of book do you like?.What makes a character interesting?.What makes a problem in a story exciting?.What is a setting you enjoy?.What is one new word you learned?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reading Detective Sprint',
    '{"lesson_name": "Reading Detective Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Books & comprehension"}, {"content_key": "rapid_questions", "content_value": "What kind of book do you like?.What makes a character interesting?.What makes a problem in a story exciting?.What is a setting you enjoy?.What is one new word you learned?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 94: Classwork Confidence Burst
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Classwork Confidence Burst', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning behaviors', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you ask questions in class?.What helps you try even when unsure?.What helps you finish work on time?.What helps you listen to directions?.What helps you stay calm during tests?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Classwork Confidence Burst',
    '{"lesson_name": "Classwork Confidence Burst", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning behaviors"}, {"content_key": "rapid_questions", "content_value": "What helps you ask questions in class?.What helps you try even when unsure?.What helps you finish work on time?.What helps you listen to directions?.What helps you stay calm during tests?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 95: Friendship Signals Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Signals Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friend skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What shows someone is a good friend?.What makes you feel respected by friends?.What makes a friendship fun?.What makes a friendship strong?.What do you do when a friend is upset?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Signals Flash',
    '{"lesson_name": "Friendship Signals Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friend skills"}, {"content_key": "rapid_questions", "content_value": "What shows someone is a good friend?.What makes you feel respected by friends?.What makes a friendship fun?.What makes a friendship strong?.What do you do when a friend is upset?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 96: Digital Choices Quickstep
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Choices Quickstep', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Screen time decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one good time to use screens?.What is one time to take a screen break?.What game or app helps you learn?.What do you do if you see something mean online?.What is a safe rule for devices?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Choices Quickstep',
    '{"lesson_name": "Digital Choices Quickstep", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Screen time decisions"}, {"content_key": "rapid_questions", "content_value": "What is one good time to use screens?.What is one time to take a screen break?.What game or app helps you learn?.What do you do if you see something mean online?.What is a safe rule for devices?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 97: Nature Science Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature Science Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Earth & curiosity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What natural place do you like?.What animal do you want to learn about?.What weather do you enjoy?.What is one way to help the Earth?.What nature sound do you like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature Science Snap',
    '{"lesson_name": "Nature Science Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Earth & curiosity"}, {"content_key": "rapid_questions", "content_value": "What natural place do you like?.What animal do you want to learn about?.What weather do you enjoy?.What is one way to help the Earth?.What nature sound do you like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 98: Kindness in Crowds
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Kindness in Crowds', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Community behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do to include someone in a group?.What do you say to be polite in public?.What do you do if someone makes a mistake?.What do you do if someone is lonely?.What does respect look like at school?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kindness in Crowds',
    '{"lesson_name": "Kindness in Crowds", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Community behavior"}, {"content_key": "rapid_questions", "content_value": "What do you do to include someone in a group?.What do you say to be polite in public?.What do you do if someone makes a mistake?.What do you do if someone is lonely?.What does respect look like at school?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 99: Problem-Solve Fast
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Problem-Solve Fast', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Simple problem solving', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if you forget something important?.What do you do if you lose an item?.What do you do if you’re confused by directions?.What do you do if a plan changes?.What do you do if you feel overwhelmed?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Problem-Solve Fast',
    '{"lesson_name": "Problem-Solve Fast", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Simple problem solving"}, {"content_key": "rapid_questions", "content_value": "What do you do if you forget something important?.What do you do if you lose an item?.What do you do if you\u2019re confused by directions?.What do you do if a plan changes?.What do you do if you feel overwhelmed?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 100: Weekly Wins Launch
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Weekly Wins Launch', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Progress', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What win did you have this week?.What did you practice this week?.What did you learn from a mistake?.What goal do you have next week?.What will you do first to start?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Weekly Wins Launch',
    '{"lesson_name": "Weekly Wins Launch", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Progress"}, {"content_key": "rapid_questions", "content_value": "What win did you have this week?.What did you practice this week?.What did you learn from a mistake?.What goal do you have next week?.What will you do first to start?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 101: Choices + Reasons Builder
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choices + Reasons Builder', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences with reasoning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Which school subject fits you best, and why?.Which hobby is worth your time, and why?.Which friend quality matters most, and why?.Which place helps you focus, and why?.Which rule helps your class, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choices + Reasons Builder',
    '{"lesson_name": "Choices + Reasons Builder", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences with reasoning"}, {"content_key": "rapid_questions", "content_value": "Which school subject fits you best, and why?.Which hobby is worth your time, and why?.Which friend quality matters most, and why?.Which place helps you focus, and why?.Which rule helps your class, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 102: Stress Signals & Tools
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress Signals & Tools', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Managing stress', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does stress feel like in your body?.What helps you calm down fastest, and why?.What helps you focus when distracted, and why?.What helps you handle disappointment, and why?.What is a healthy way to take a break, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress Signals & Tools',
    '{"lesson_name": "Stress Signals & Tools", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Managing stress"}, {"content_key": "rapid_questions", "content_value": "What does stress feel like in your body?.What helps you calm down fastest, and why?.What helps you focus when distracted, and why?.What helps you handle disappointment, and why?.What is a healthy way to take a break, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 103: Friend Problems, Smart Fixes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friend Problems, Smart Fixes', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair & communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If a friend ignores you, what do you do and why?.If you disagree in a game, what do you say and why?.If you hurt someone’s feelings, what do you do and why?.If someone gossips, what do you do and why?.What makes an apology feel real, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friend Problems, Smart Fixes',
    '{"lesson_name": "Friend Problems, Smart Fixes", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair & communication"}, {"content_key": "rapid_questions", "content_value": "If a friend ignores you, what do you do and why?.If you disagree in a game, what do you say and why?.If you hurt someone\u2019s feelings, what do you do and why?.If someone gossips, what do you do and why?.What makes an apology feel real, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 104: Learning Strategy Lab
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning Strategy Lab', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Study skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you remember vocabulary, and why?.What helps you learn math steps, and why?.What helps you understand a hard reading passage, and why?.What helps you finish long projects, and why?.What helps you prepare for tests, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning Strategy Lab',
    '{"lesson_name": "Learning Strategy Lab", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Study skills"}, {"content_key": "rapid_questions", "content_value": "What helps you remember vocabulary, and why?.What helps you learn math steps, and why?.What helps you understand a hard reading passage, and why?.What helps you finish long projects, and why?.What helps you prepare for tests, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 105: Community Moments Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community Moments Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Being helpful', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'At a neighborhood farmers’ market, how could you help others?.During Día de los Muertos, how can you show respect, and why?.How do you make someone feel welcome at school?.What is one kind action that costs nothing, and why?.How do you show gratitude, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community Moments Round',
    '{"lesson_name": "Community Moments Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Being helpful"}, {"content_key": "rapid_questions", "content_value": "At a neighborhood farmers\u2019 market, how could you help others?.During D\u00eda de los Muertos, how can you show respect, and why?.How do you make someone feel welcome at school?.What is one kind action that costs nothing, and why?.How do you show gratitude, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 106: Digital Safety + Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Safety + Respect', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why is it important to be kind online?.What should you do if you see bullying online, and why?.What is a safe rule about sharing personal info, and why?.What does “think before posting” mean, and why?.What is a good screen-time boundary, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Safety + Respect',
    '{"lesson_name": "Digital Safety + Respect", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online choices"}, {"content_key": "rapid_questions", "content_value": "Why is it important to be kind online?.What should you do if you see bullying online, and why?.What is a safe rule about sharing personal info, and why?.What does \u201cthink before posting\u201d mean, and why?.What is a good screen-time boundary, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 107: Fairness With Details
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness With Details', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fair solutions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a fair way to choose teams, and why?.What is a fair way to share supplies, and why?.If someone cheats, what should happen, and why?.What is a fair way to solve a line problem, and why?.Why does fairness build trust?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness With Details',
    '{"lesson_name": "Fairness With Details", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fair solutions"}, {"content_key": "rapid_questions", "content_value": "What is a fair way to choose teams, and why?.What is a fair way to share supplies, and why?.If someone cheats, what should happen, and why?.What is a fair way to solve a line problem, and why?.Why does fairness build trust?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 108: Perspective Switch Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Switch Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Understanding others', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone act mean when they’re hurt?.Why might someone be quiet in groups?.Why might someone get upset over small things?.At a powwow gathering, why is listening respectfully important?.What question can you ask to understand someone better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Switch Round',
    '{"lesson_name": "Perspective Switch Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Understanding others"}, {"content_key": "rapid_questions", "content_value": "Why might someone act mean when they\u2019re hurt?.Why might someone be quiet in groups?.Why might someone get upset over small things?.At a powwow gathering, why is listening respectfully important?.What question can you ask to understand someone better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 109: Resilience in Real Time
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience in Real Time', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Bouncing back', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do after you fail, and why?.What helps you try again, and why?.What helps you stay calm under pressure, and why?.What helps you handle criticism, and why?.What helps you keep promises to yourself, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience in Real Time',
    '{"lesson_name": "Resilience in Real Time", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Bouncing back"}, {"content_key": "rapid_questions", "content_value": "What do you do after you fail, and why?.What helps you try again, and why?.What helps you stay calm under pressure, and why?.What helps you handle criticism, and why?.What helps you keep promises to yourself, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 110: Goal Plan With Obstacles
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goal Plan With Obstacles', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a goal for this month, and why does it matter?.What is step one, and why is it step one?.What obstacle might show up, and why?.What will you do if you get stuck, and why?.How will you measure success, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goal Plan With Obstacles',
    '{"lesson_name": "Goal Plan With Obstacles", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Planning"}, {"content_key": "rapid_questions", "content_value": "What is a goal for this month, and why does it matter?.What is step one, and why is it step one?.What obstacle might show up, and why?.What will you do if you get stuck, and why?.How will you measure success, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 111: Strong Opinions, Strong Reasons
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Strong Opinions, Strong Reasons', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Opinion + reason', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes a great friend, and why?.What makes a class feel safe, and why?.What makes a rule fair, and why?.What makes learning meaningful, and why?.What makes you proud of yourself, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Strong Opinions, Strong Reasons',
    '{"lesson_name": "Strong Opinions, Strong Reasons", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Opinion + reason"}, {"content_key": "rapid_questions", "content_value": "What makes a great friend, and why?.What makes a class feel safe, and why?.What makes a rule fair, and why?.What makes learning meaningful, and why?.What makes you proud of yourself, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 112: Conflict Repair Scripts
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Conflict Repair Scripts', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fixing conflicts', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If someone interrupts you, what do you say and why?.If you interrupt someone, what do you say and why?.If someone blames you, what do you say and why?.If you feel ignored, what do you say and why?.If you make a mistake, what do you say and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Conflict Repair Scripts',
    '{"lesson_name": "Conflict Repair Scripts", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fixing conflicts"}, {"content_key": "rapid_questions", "content_value": "If someone interrupts you, what do you say and why?.If you interrupt someone, what do you say and why?.If someone blames you, what do you say and why?.If you feel ignored, what do you say and why?.If you make a mistake, what do you say and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 113: Consequences & Choices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Consequences & Choices', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Cause and effect', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What happens if you don’t listen to directions, and why?.What happens if you don’t do your part in a group, and why?.What happens if you lie to avoid trouble, and why?.What happens if you include someone new, and why?.What happens if you apologize quickly, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Consequences & Choices',
    '{"lesson_name": "Consequences & Choices", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Cause and effect"}, {"content_key": "rapid_questions", "content_value": "What happens if you don\u2019t listen to directions, and why?.What happens if you don\u2019t do your part in a group, and why?.What happens if you lie to avoid trouble, and why?.What happens if you include someone new, and why?.What happens if you apologize quickly, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 114: Perspective Puzzle
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Puzzle', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Different viewpoints', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone disagree even when you think you’re right?.Why might a “joke” hurt someone, and why?.Why might a new student seem rude, and why?.At a Hawaiian community festival, why might someone feel shy, and why?.What should you do before judging someone, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Puzzle',
    '{"lesson_name": "Perspective Puzzle", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Different viewpoints"}, {"content_key": "rapid_questions", "content_value": "Why might someone disagree even when you think you\u2019re right?.Why might a \u201cjoke\u201d hurt someone, and why?.Why might a new student seem rude, and why?.At a Hawaiian community festival, why might someone feel shy, and why?.What should you do before judging someone, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 115: Stress → Strategy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress → Strategy', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping plans', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When you feel overwhelmed, what is your plan and why?.When you feel angry, what is your plan and why?.When you feel nervous, what is your plan and why?.When you feel disappointed, what is your plan and why?.When you feel distracted, what is your plan and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress → Strategy',
    '{"lesson_name": "Stress \u2192 Strategy", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping plans"}, {"content_key": "rapid_questions", "content_value": "When you feel overwhelmed, what is your plan and why?.When you feel angry, what is your plan and why?.When you feel nervous, what is your plan and why?.When you feel disappointed, what is your plan and why?.When you feel distracted, what is your plan and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 116: Fairness With Tradeoffs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness With Tradeoffs', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fair solutions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If two people want the same role, what’s fair and why?.If time is limited, how do you share fairly and why?.If someone always talks, what’s fair and why?.If rules are unfair, how do you fix them respectfully and why?.Why do fair systems help communities?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness With Tradeoffs',
    '{"lesson_name": "Fairness With Tradeoffs", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fair solutions"}, {"content_key": "rapid_questions", "content_value": "If two people want the same role, what\u2019s fair and why?.If time is limited, how do you share fairly and why?.If someone always talks, what\u2019s fair and why?.If rules are unfair, how do you fix them respectfully and why?.Why do fair systems help communities?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 117: Leadership That Helps
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership That Helps', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Positive leadership', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does good leadership look like, and why?.How do you lead without bossing people, and why?.How do you include quiet teammates, and why?.How do you handle a team conflict, and why?.Why does listening make leaders stronger?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership That Helps',
    '{"lesson_name": "Leadership That Helps", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Positive leadership"}, {"content_key": "rapid_questions", "content_value": "What does good leadership look like, and why?.How do you lead without bossing people, and why?.How do you include quiet teammates, and why?.How do you handle a team conflict, and why?.Why does listening make leaders stronger?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 118: Digital Ethics Starter
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Ethics Starter', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why is posting unkind comments harmful, and why?.What should you do if you see online bullying, and why?.Why is privacy important, and why?.What’s the best way to respond to rumors online, and why?.What does “digital respect” mean, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Ethics Starter',
    '{"lesson_name": "Digital Ethics Starter", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online responsibility"}, {"content_key": "rapid_questions", "content_value": "Why is posting unkind comments harmful, and why?.What should you do if you see online bullying, and why?.Why is privacy important, and why?.What\u2019s the best way to respond to rumors online, and why?.What does \u201cdigital respect\u201d mean, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 119: Resilience & Identity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience & Identity', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Who you’re becoming', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What challenge helped you grow, and why?.What mistake taught you something, and why?.What strength do you rely on, and why?.What habit do you want to change, and why?.What goal matters to you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience & Identity',
    '{"lesson_name": "Resilience & Identity", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Who you\u2019re becoming"}, {"content_key": "rapid_questions", "content_value": "What challenge helped you grow, and why?.What mistake taught you something, and why?.What strength do you rely on, and why?.What habit do you want to change, and why?.What goal matters to you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 120: Future Planning Mini-Capstone
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Planning Mini-Capstone', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 4, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals + steps + backup plan', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What goal do you want this year, and why?.What is your first step, and why?.What backup plan will you use if it gets hard, and why?.Who can support you, and why?.How will you stay motivated, and why?.✅ MODULE 3 — GRADE 5', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Planning Mini-Capstone',
    '{"lesson_name": "Future Planning Mini-Capstone", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 4, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals + steps + backup plan"}, {"content_key": "rapid_questions", "content_value": "What goal do you want this year, and why?.What is your first step, and why?.What backup plan will you use if it gets hard, and why?.Who can support you, and why?.How will you stay motivated, and why?.\u2705 MODULE 3 \u2014 GRADE 5"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 121: Weekday Balance Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Weekday Balance Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'School-life balance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What part of your day feels busiest?.What part of your day feels calmest?.What helps you stay organized?.What helps you start homework?.What helps you relax after work?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Weekday Balance Check',
    '{"lesson_name": "Weekday Balance Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "School-life balance"}, {"content_key": "rapid_questions", "content_value": "What part of your day feels busiest?.What part of your day feels calmest?.What helps you stay organized?.What helps you start homework?.What helps you relax after work?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 122: Interest Identity Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Interest Identity Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Interests & identity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What hobby feels most “you”?.What skill do you want to improve?.What topic do you talk about a lot?.What activity makes you feel confident?.What activity helps you feel creative?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Interest Identity Pop',
    '{"lesson_name": "Interest Identity Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Interests & identity"}, {"content_key": "rapid_questions", "content_value": "What hobby feels most \u201cyou\u201d?.What skill do you want to improve?.What topic do you talk about a lot?.What activity makes you feel confident?.What activity helps you feel creative?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 123: Friendship Habits Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Habits Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Strong friendships', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you trust someone?.What makes you feel respected?.What makes you feel included?.What makes a friendship last?.What makes a friendship healthier?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Habits Sprint',
    '{"lesson_name": "Friendship Habits Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Strong friendships"}, {"content_key": "rapid_questions", "content_value": "What makes you trust someone?.What makes you feel respected?.What makes you feel included?.What makes a friendship last?.What makes a friendship healthier?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 124: Learning Strengths Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning Strengths Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Academic strengths', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What subject are you strongest in?.What helps you learn faster?.What helps you remember information?.What motivates you to try?.What helps you stay focused?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning Strengths Flash',
    '{"lesson_name": "Learning Strengths Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Academic strengths"}, {"content_key": "rapid_questions", "content_value": "What subject are you strongest in?.What helps you learn faster?.What helps you remember information?.What motivates you to try?.What helps you stay focused?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 125: Creative Builder Burst
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Creative Builder Burst', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Creativity & invention', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you could invent something for students, what would it be?.If you could redesign backpacks, what would change?.If you could add a class, what would it be?.If you could build a club, what would it do?.If you could improve recess, what would change?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Creative Builder Burst',
    '{"lesson_name": "Creative Builder Burst", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Creativity & invention"}, {"content_key": "rapid_questions", "content_value": "If you could invent something for students, what would it be?.If you could redesign backpacks, what would change?.If you could add a class, what would it be?.If you could build a club, what would it do?.If you could improve recess, what would change?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 126: Community Respect Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community Respect Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Respect in public', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does respect look like in a crowd?.What does kindness look like in a line?.What do you do if someone is left out?.What do you do if someone makes a mistake?.What do you do to welcome new people?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community Respect Round',
    '{"lesson_name": "Community Respect Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Respect in public"}, {"content_key": "rapid_questions", "content_value": "What does respect look like in a crowd?.What does kindness look like in a line?.What do you do if someone is left out?.What do you do if someone makes a mistake?.What do you do to welcome new people?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 127: Online Choices Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Online Choices Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Digital behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a safe rule online?.What do you do if you see something mean online?.What do you do before you post something?.What is a healthy screen-time habit?.What does “privacy” mean to you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Online Choices Check',
    '{"lesson_name": "Online Choices Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Digital behavior"}, {"content_key": "rapid_questions", "content_value": "What is a safe rule online?.What do you do if you see something mean online?.What do you do before you post something?.What is a healthy screen-time habit?.What does \u201cprivacy\u201d mean to you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 128: Nature & Impact Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature & Impact Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Environment choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one way to reduce waste?.What is one way to save water?.What is one way to help animals?.What natural place do you want to protect?.What outdoor moment made you feel calm?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature & Impact Snap',
    '{"lesson_name": "Nature & Impact Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Environment choices"}, {"content_key": "rapid_questions", "content_value": "What is one way to reduce waste?.What is one way to save water?.What is one way to help animals?.What natural place do you want to protect?.What outdoor moment made you feel calm?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 129: Problem Solver Quickfire
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Problem Solver Quickfire', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Solutions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if a plan changes suddenly?.What do you do if you forget an important task?.What do you do if you misunderstand directions?.What do you do if you feel overwhelmed?.What do you do if you need help fast?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Problem Solver Quickfire',
    '{"lesson_name": "Problem Solver Quickfire", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Solutions"}, {"content_key": "rapid_questions", "content_value": "What do you do if a plan changes suddenly?.What do you do if you forget an important task?.What do you do if you misunderstand directions?.What do you do if you feel overwhelmed?.What do you do if you need help fast?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 130: Growth Wins Wrap-Up
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Growth Wins Wrap-Up', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Progress reflection', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a win you had recently?.What mistake taught you something?.What habit are you improving?.What goal is next for you?.What will you do first?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growth Wins Wrap-Up',
    '{"lesson_name": "Growth Wins Wrap-Up", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Progress reflection"}, {"content_key": "rapid_questions", "content_value": "What is a win you had recently?.What mistake taught you something?.What habit are you improving?.What goal is next for you?.What will you do first?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 131: Values Behind Choices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Values Behind Choices', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences + values', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value matters most to you (respect, honesty, kindness), and why?.What kind of friend do you try to be, and why?.What habit helps you succeed, and why?.What rule should every class have, and why?.What makes a goal important, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Values Behind Choices',
    '{"lesson_name": "Values Behind Choices", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences + values"}, {"content_key": "rapid_questions", "content_value": "What value matters most to you (respect, honesty, kindness), and why?.What kind of friend do you try to be, and why?.What habit helps you succeed, and why?.What rule should every class have, and why?.What makes a goal important, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 132: Stress Management Toolkit
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress Management Toolkit', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping strategies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What stress trigger do you notice most, and why?.What calming strategy works best for you, and why?.What helps you focus when distracted, and why?.What helps you handle disappointment, and why?.What helps you reset after conflict, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress Management Toolkit',
    '{"lesson_name": "Stress Management Toolkit", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping strategies"}, {"content_key": "rapid_questions", "content_value": "What stress trigger do you notice most, and why?.What calming strategy works best for you, and why?.What helps you focus when distracted, and why?.What helps you handle disappointment, and why?.What helps you reset after conflict, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 133: Conflict Resolution Moves
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Conflict Resolution Moves', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair & communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If someone interrupts you, what do you say and why?.If you interrupt, how do you repair it and why?.If someone gossips, what do you do and why?.If you feel left out, what do you say and why?.What makes an apology meaningful, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Conflict Resolution Moves',
    '{"lesson_name": "Conflict Resolution Moves", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair & communication"}, {"content_key": "rapid_questions", "content_value": "If someone interrupts you, what do you say and why?.If you interrupt, how do you repair it and why?.If someone gossips, what do you do and why?.If you feel left out, what do you say and why?.What makes an apology meaningful, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 134: Study Smarter, Not Harder
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Study Smarter, Not Harder', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning strategy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What strategy helps you learn vocabulary, and why?.What strategy helps you in math, and why?.What strategy helps you read complex text, and why?.What helps you finish long-term projects, and why?.What helps you stay consistent, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Study Smarter, Not Harder',
    '{"lesson_name": "Study Smarter, Not Harder", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning strategy"}, {"content_key": "rapid_questions", "content_value": "What strategy helps you learn vocabulary, and why?.What strategy helps you in math, and why?.What strategy helps you read complex text, and why?.What helps you finish long-term projects, and why?.What helps you stay consistent, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 135: Creativity With Purpose
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Creativity With Purpose', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Designing solutions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you could design something to help younger students, what would it be and why?.If you could improve lunch time, what would change and why?.If you could improve school hallways, what would change and why?.If you could create a kindness challenge, what would it be and why?.If you could redesign homework, what would change and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Creativity With Purpose',
    '{"lesson_name": "Creativity With Purpose", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Designing solutions"}, {"content_key": "rapid_questions", "content_value": "If you could design something to help younger students, what would it be and why?.If you could improve lunch time, what would change and why?.If you could improve school hallways, what would change and why?.If you could create a kindness challenge, what would it be and why?.If you could redesign homework, what would change and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 136: Perspective Practice Plus
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Practice Plus', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Understanding others', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone be quiet in groups?.Why might someone act rude when they feel embarrassed?.Why might someone avoid eye contact?.During Pacific canoe practice, why might teamwork matter deeply?.What question helps you understand someone better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Practice Plus',
    '{"lesson_name": "Perspective Practice Plus", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Understanding others"}, {"content_key": "rapid_questions", "content_value": "Why might someone be quiet in groups?.Why might someone act rude when they feel embarrassed?.Why might someone avoid eye contact?.During Pacific canoe practice, why might teamwork matter deeply?.What question helps you understand someone better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 137: Digital Choices With Consequences
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Choices With Consequences', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why can screenshots cause problems, and why?.What should you do before sharing something online, and why?.What should you do if a friend posts something hurtful, and why?.Why is privacy important, and why?.What does “pause before you post” mean, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Choices With Consequences',
    '{"lesson_name": "Digital Choices With Consequences", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online behavior"}, {"content_key": "rapid_questions", "content_value": "Why can screenshots cause problems, and why?.What should you do before sharing something online, and why?.What should you do if a friend posts something hurtful, and why?.Why is privacy important, and why?.What does \u201cpause before you post\u201d mean, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 138: Fair Systems Mini Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Systems Mini Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fairness & rules', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a fair way to choose leaders, and why?.What is a fair way to share time in a game, and why?.What is a fair consequence for cheating, and why?.What is a fair way to include everyone, and why?.Why does fairness build trust, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Systems Mini Round',
    '{"lesson_name": "Fair Systems Mini Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fairness & rules"}, {"content_key": "rapid_questions", "content_value": "What is a fair way to choose leaders, and why?.What is a fair way to share time in a game, and why?.What is a fair consequence for cheating, and why?.What is a fair way to include everyone, and why?.Why does fairness build trust, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 139: Resilience Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience Under Pressure', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Bouncing back', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you keep going when things feel hard, and why?.What helps you recover after a mistake, and why?.What helps you handle criticism, and why?.What helps you stay calm during stress, and why?.What helps you keep your confidence, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience Under Pressure',
    '{"lesson_name": "Resilience Under Pressure", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Bouncing back"}, {"content_key": "rapid_questions", "content_value": "What helps you keep going when things feel hard, and why?.What helps you recover after a mistake, and why?.What helps you handle criticism, and why?.What helps you stay calm during stress, and why?.What helps you keep your confidence, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 140: Goal Plan + Backup
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goal Plan + Backup', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Planning and obstacles', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What goal matters most right now, and why?.What is your first step, and why?.What obstacle might happen, and why?.What backup plan will you use, and why?.How will you measure improvement, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goal Plan + Backup',
    '{"lesson_name": "Goal Plan + Backup", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Planning and obstacles"}, {"content_key": "rapid_questions", "content_value": "What goal matters most right now, and why?.What is your first step, and why?.What obstacle might happen, and why?.What backup plan will you use, and why?.How will you measure improvement, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 141: Opinion + Evidence Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Opinion + Evidence Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Claim + support', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes someone a strong friend, and why?.What makes a classroom feel safe, and why?.What makes a rule fair, and why?.What makes learning meaningful, and why?.What makes a leader trustworthy, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Opinion + Evidence Sprint',
    '{"lesson_name": "Opinion + Evidence Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Claim + support"}, {"content_key": "rapid_questions", "content_value": "What makes someone a strong friend, and why?.What makes a classroom feel safe, and why?.What makes a rule fair, and why?.What makes learning meaningful, and why?.What makes a leader trustworthy, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 142: Conflict With Perspective
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Conflict With Perspective', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair + empathy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If someone snaps at you, what might be going on, and what do you do?.If you snap at someone, how do you repair it, and why?.If someone excludes you, what do you say, and why?.If you exclude someone by accident, what do you do, and why?.If a rumor spreads, what is a smart response, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Conflict With Perspective',
    '{"lesson_name": "Conflict With Perspective", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair + empathy"}, {"content_key": "rapid_questions", "content_value": "If someone snaps at you, what might be going on, and what do you do?.If you snap at someone, how do you repair it, and why?.If someone excludes you, what do you say, and why?.If you exclude someone by accident, what do you do, and why?.If a rumor spreads, what is a smart response, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 143: Values in Action
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Values in Action', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Values-based choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does honesty look like when it’s hard, and why?.What does respect look like during disagreement, and why?.What does fairness look like when people want different things, and why?.What does courage look like in a small moment, and why?.What does kindness look like when you’re tired, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Values in Action',
    '{"lesson_name": "Values in Action", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Values-based choices"}, {"content_key": "rapid_questions", "content_value": "What does honesty look like when it\u2019s hard, and why?.What does respect look like during disagreement, and why?.What does fairness look like when people want different things, and why?.What does courage look like in a small moment, and why?.What does kindness look like when you\u2019re tired, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 144: Tradeoffs & Tough Choices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Tradeoffs & Tough Choices', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Making balanced decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you have homework and a game, how do you choose, and why?.If two friends want different plans, what do you do, and why?.If you want to win but also be fair, what do you do, and why?.If you want to be honest but fear trouble, what do you do, and why?.If you want to help others but need rest, what do you do, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tradeoffs & Tough Choices',
    '{"lesson_name": "Tradeoffs & Tough Choices", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Making balanced decisions"}, {"content_key": "rapid_questions", "content_value": "If you have homework and a game, how do you choose, and why?.If two friends want different plans, what do you do, and why?.If you want to win but also be fair, what do you do, and why?.If you want to be honest but fear trouble, what do you do, and why?.If you want to help others but need rest, what do you do, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 145: Resilience Story in Mini Form
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience Story in Mini Form', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Meaning from challenges', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What challenge taught you the most, and why?.What mistake helped you grow, and why?.What fear are you working on, and why?.What helps you stay steady under pressure, and why?.What does “keep going” mean to you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience Story in Mini Form',
    '{"lesson_name": "Resilience Story in Mini Form", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Meaning from challenges"}, {"content_key": "rapid_questions", "content_value": "What challenge taught you the most, and why?.What mistake helped you grow, and why?.What fear are you working on, and why?.What helps you stay steady under pressure, and why?.What does \u201ckeep going\u201d mean to you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 146: Systems Thinker Starter
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Systems Thinker Starter', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Improving rules and routines', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What school rule would you improve, and why?.What part of school could run more smoothly, and why?.What change would reduce stress for students, and why?.What change would improve kindness at school, and why?.What tradeoff might your change create, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Systems Thinker Starter',
    '{"lesson_name": "Systems Thinker Starter", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Improving rules and routines"}, {"content_key": "rapid_questions", "content_value": "What school rule would you improve, and why?.What part of school could run more smoothly, and why?.What change would reduce stress for students, and why?.What change would improve kindness at school, and why?.What tradeoff might your change create, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 147: Digital Ethics Challenge
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Ethics Challenge', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online morals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What should you do if a friend shares private info, and why?.What is the most respectful way to disagree online, and why?.Why can “jokes” online become harmful, and why?.What should you do if someone is bullied online, and why?.What does digital integrity mean, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Ethics Challenge',
    '{"lesson_name": "Digital Ethics Challenge", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online morals"}, {"content_key": "rapid_questions", "content_value": "What should you do if a friend shares private info, and why?.What is the most respectful way to disagree online, and why?.Why can \u201cjokes\u201d online become harmful, and why?.What should you do if someone is bullied online, and why?.What does digital integrity mean, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 148: Culture & Respect in Public
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Culture & Respect in Public', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Inclusive behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'At a Juneteenth event, how do you show respect, and why?.During Lunar New Year, how do you show curiosity respectfully, and why?.At a powwow, why is listening important, and why?.At a Día de los Muertos table, how do you behave respectfully, and why?.Why is it important to learn about cultures carefully, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Culture & Respect in Public',
    '{"lesson_name": "Culture & Respect in Public", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Inclusive behavior"}, {"content_key": "rapid_questions", "content_value": "At a Juneteenth event, how do you show respect, and why?.During Lunar New Year, how do you show curiosity respectfully, and why?.At a powwow, why is listening important, and why?.At a D\u00eda de los Muertos table, how do you behave respectfully, and why?.Why is it important to learn about cultures carefully, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 149: Leadership Without Power
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership Without Power', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Influence & kindness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How can you lead without being “the boss,” and why?.How do you bring quiet people into a group, and why?.How do you handle a teammate who isn’t working, and why?.How do you keep a team calm, and why?.Why does listening create trust, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership Without Power',
    '{"lesson_name": "Leadership Without Power", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Influence & kindness"}, {"content_key": "rapid_questions", "content_value": "How can you lead without being \u201cthe boss,\u201d and why?.How do you bring quiet people into a group, and why?.How do you handle a teammate who isn\u2019t working, and why?.How do you keep a team calm, and why?.Why does listening create trust, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 150: Pre-Middle School Readiness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pre-Middle School Readiness', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 5, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Future planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What skill do you want strong before next year, and why?.What habit will help you succeed, and why?.What kind of friend do you want to be, and why?.What challenge will help you grow, and why?.What is your first step starting this week, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pre-Middle School Readiness',
    '{"lesson_name": "Pre-Middle School Readiness", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 5, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Future planning"}, {"content_key": "rapid_questions", "content_value": "What skill do you want strong before next year, and why?.What habit will help you succeed, and why?.What kind of friend do you want to be, and why?.What challenge will help you grow, and why?.What is your first step starting this week, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 151: Sixth-Grade Snapshot Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sixth-Grade Snapshot Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Daily highlights', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What was the best part of your day?.What was the hardest part of your day?.What made you laugh today?.What helped you focus today?.What do you want tomorrow to be like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sixth-Grade Snapshot Sprint',
    '{"lesson_name": "Sixth-Grade Snapshot Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Daily highlights"}, {"content_key": "rapid_questions", "content_value": "What was the best part of your day?.What was the hardest part of your day?.What made you laugh today?.What helped you focus today?.What do you want tomorrow to be like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 152: Locker & Life Quickfire
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Locker & Life Quickfire', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Organization basics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you remember what to bring to school?.What helps you keep track of homework?.What helps you stay on time?.What is one small habit that keeps you organized?.What is one thing you want to improve this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Locker & Life Quickfire',
    '{"lesson_name": "Locker & Life Quickfire", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Organization basics"}, {"content_key": "rapid_questions", "content_value": "What helps you remember what to bring to school?.What helps you keep track of homework?.What helps you stay on time?.What is one small habit that keeps you organized?.What is one thing you want to improve this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 153: Lunchroom Choices Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Lunchroom Choices Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social moments at lunch', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Who do you usually sit with at lunch?.What makes lunch time comfortable for you?.What do you do if someone sits alone?.What do you do if a friend is in a bad mood?.What makes you feel included?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Lunchroom Choices Dash',
    '{"lesson_name": "Lunchroom Choices Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social moments at lunch"}, {"content_key": "rapid_questions", "content_value": "Who do you usually sit with at lunch?.What makes lunch time comfortable for you?.What do you do if someone sits alone?.What do you do if a friend is in a bad mood?.What makes you feel included?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 154: Hobby Switch Burst
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Hobby Switch Burst', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Interests & hobbies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What hobby do you enjoy most right now?.What hobby do you want to try next?.What hobby helps you feel calm?.What hobby makes you feel confident?.What hobby helps you connect with others?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Hobby Switch Burst',
    '{"lesson_name": "Hobby Switch Burst", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Interests & hobbies"}, {"content_key": "rapid_questions", "content_value": "What hobby do you enjoy most right now?.What hobby do you want to try next?.What hobby helps you feel calm?.What hobby makes you feel confident?.What hobby helps you connect with others?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 155: Study Starter Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Study Starter Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Homework habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When do you usually do homework?.Where do you focus best?.What distracts you the most?.What helps you start when you don’t feel like it?.What reward helps you stay motivated?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Study Starter Round',
    '{"lesson_name": "Study Starter Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Homework habits"}, {"content_key": "rapid_questions", "content_value": "When do you usually do homework?.Where do you focus best?.What distracts you the most?.What helps you start when you don\u2019t feel like it?.What reward helps you stay motivated?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 156: Friend Signal Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friend Signal Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friendship cues', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you trust a friend?.What makes you lose trust?.What makes someone feel respected?.What makes someone feel left out?.What makes a friendship stronger?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friend Signal Flash',
    '{"lesson_name": "Friend Signal Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friendship cues"}, {"content_key": "rapid_questions", "content_value": "What makes you trust a friend?.What makes you lose trust?.What makes someone feel respected?.What makes someone feel left out?.What makes a friendship stronger?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 157: Screen-Time Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Screen-Time Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Digital balance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What app or game do you use most?.What is a good time to take a screen break?.What helps you stop scrolling?.What is a safe rule online?.What is one positive thing you do offline?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Screen-Time Check',
    '{"lesson_name": "Screen-Time Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Digital balance"}, {"content_key": "rapid_questions", "content_value": "What app or game do you use most?.What is a good time to take a screen break?.What helps you stop scrolling?.What is a safe rule online?.What is one positive thing you do offline?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 158: Mood Reset Mini-Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Mood Reset Mini-Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping tools', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you calm down fast?.What helps you when you feel stressed?.What helps you when you feel annoyed?.What helps you when you feel nervous?.Who helps you feel supported?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mood Reset Mini-Round',
    '{"lesson_name": "Mood Reset Mini-Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping tools"}, {"content_key": "rapid_questions", "content_value": "What helps you calm down fast?.What helps you when you feel stressed?.What helps you when you feel annoyed?.What helps you when you feel nervous?.Who helps you feel supported?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 159: Teamwork Quickstep
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork Quickstep', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Group work basics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What role do you like in a group?.What makes group work annoying sometimes?.What makes group work successful?.What do you do if someone won’t participate?.What do you do if two people disagree?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Quickstep',
    '{"lesson_name": "Teamwork Quickstep", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Group work basics"}, {"content_key": "rapid_questions", "content_value": "What role do you like in a group?.What makes group work annoying sometimes?.What makes group work successful?.What do you do if someone won\u2019t participate?.What do you do if two people disagree?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 160: Week Wins Wrap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Week Wins Wrap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reflection & growth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one win you had this week?.What mistake taught you something?.What is one thing you practiced?.What is one thing you want to improve next week?.What is your first step?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Week Wins Wrap',
    '{"lesson_name": "Week Wins Wrap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Reflection & growth"}, {"content_key": "rapid_questions", "content_value": "What is one win you had this week?.What mistake taught you something?.What is one thing you practiced?.What is one thing you want to improve next week?.What is your first step?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 161: Choices + Reasons Builder
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choices + Reasons Builder', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences with “why”', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What class do you enjoy most, and why?.What class is hardest for you, and why?.What activity helps your mood, and why?.What friend quality matters most, and why?.What rule makes school better, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choices + Reasons Builder',
    '{"lesson_name": "Choices + Reasons Builder", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences with \u201cwhy\u201d"}, {"content_key": "rapid_questions", "content_value": "What class do you enjoy most, and why?.What class is hardest for you, and why?.What activity helps your mood, and why?.What friend quality matters most, and why?.What rule makes school better, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 162: Stress Signals Scanner
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress Signals Scanner', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Stress awareness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you know you’re getting stressed?.What is your best calm-down strategy, and why?.What helps you focus when distracted, and why?.What helps you after a tough day, and why?.What’s one healthy way to reset, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress Signals Scanner',
    '{"lesson_name": "Stress Signals Scanner", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Stress awareness"}, {"content_key": "rapid_questions", "content_value": "How do you know you\u2019re getting stressed?.What is your best calm-down strategy, and why?.What helps you focus when distracted, and why?.What helps you after a tough day, and why?.What\u2019s one healthy way to reset, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 163: Friend Drama, Small Fixes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friend Drama, Small Fixes', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Conflict repair', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If a friend ignores your message, what do you do and why?.If a joke hurts someone, what do you say and why?.If you feel left out, what do you say and why?.If you mess up, what makes an apology real, and why?.If gossip starts, what is a smart response, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friend Drama, Small Fixes',
    '{"lesson_name": "Friend Drama, Small Fixes", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Conflict repair"}, {"content_key": "rapid_questions", "content_value": "If a friend ignores your message, what do you do and why?.If a joke hurts someone, what do you say and why?.If you feel left out, what do you say and why?.If you mess up, what makes an apology real, and why?.If gossip starts, what is a smart response, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 164: Focus Plan Lab
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Focus Plan Lab', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Productivity habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What time of day do you focus best, and why?.What distracts you most, and why?.What’s one trick that helps you start work, and why?.What helps you finish a long task, and why?.What helps you remember important things, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Focus Plan Lab',
    '{"lesson_name": "Focus Plan Lab", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Productivity habits"}, {"content_key": "rapid_questions", "content_value": "What time of day do you focus best, and why?.What distracts you most, and why?.What\u2019s one trick that helps you start work, and why?.What helps you finish a long task, and why?.What helps you remember important things, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 165: Inclusion in Action Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Inclusion in Action Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Belonging', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s an easy way to include a new student, and why?.What do you do if someone is teased, and why?.At a school cultural night, how do you show respect, and why?.What does “belonging” look like, and why?.What is one kind action that changes someone’s day, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Inclusion in Action Round',
    '{"lesson_name": "Inclusion in Action Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Belonging"}, {"content_key": "rapid_questions", "content_value": "What\u2019s an easy way to include a new student, and why?.What do you do if someone is teased, and why?.At a school cultural night, how do you show respect, and why?.What does \u201cbelonging\u201d look like, and why?.What is one kind action that changes someone\u2019s day, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 166: Digital Respect Builder
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Respect Builder', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What should you do before posting, and why?.What should you do if someone is bullied online, and why?.Why can screenshots create problems, and why?.What personal info should never be shared, and why?.What does digital respect look like, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Respect Builder',
    '{"lesson_name": "Digital Respect Builder", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online behavior"}, {"content_key": "rapid_questions", "content_value": "What should you do before posting, and why?.What should you do if someone is bullied online, and why?.Why can screenshots create problems, and why?.What personal info should never be shared, and why?.What does digital respect look like, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 167: Fairness With Examples
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness With Examples', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fair rules', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a fair way to choose teams, and why?.What’s a fair way to share roles in group work, and why?.What’s fair when two people want the same thing, and why?.What’s fair when someone breaks a rule, and why?.Why does fairness build trust, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness With Examples',
    '{"lesson_name": "Fairness With Examples", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fair rules"}, {"content_key": "rapid_questions", "content_value": "What is a fair way to choose teams, and why?.What\u2019s a fair way to share roles in group work, and why?.What\u2019s fair when two people want the same thing, and why?.What\u2019s fair when someone breaks a rule, and why?.Why does fairness build trust, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 168: Perspective Switch Practice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Switch Practice', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Understanding others', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone act rude when they’re embarrassed?.Why might someone stay quiet in a group?.Why might someone overreact to a small comment?.During Diwali or Eid celebrations, why is respectful curiosity important?.What question helps you understand someone better?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Switch Practice',
    '{"lesson_name": "Perspective Switch Practice", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Understanding others"}, {"content_key": "rapid_questions", "content_value": "Why might someone act rude when they\u2019re embarrassed?.Why might someone stay quiet in a group?.Why might someone overreact to a small comment?.During Diwali or Eid celebrations, why is respectful curiosity important?.What question helps you understand someone better?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 169: Teamwork Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork Under Pressure', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Group work challenges', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if your team is off-track, and why?.What do you do if one person dominates, and why?.What do you do if someone does nothing, and why?.What do you do if your idea isn’t chosen, and why?.What makes teamwork feel fair, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Under Pressure',
    '{"lesson_name": "Teamwork Under Pressure", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Group work challenges"}, {"content_key": "rapid_questions", "content_value": "What do you do if your team is off-track, and why?.What do you do if one person dominates, and why?.What do you do if someone does nothing, and why?.What do you do if your idea isn\u2019t chosen, and why?.What makes teamwork feel fair, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 170: Goal + Obstacle Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goal + Obstacle Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goal setting', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a goal for this month, and why?.What is your first step, and why?.What obstacle might show up, and why?.What backup plan will you use, and why?.How will you measure progress, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goal + Obstacle Round',
    '{"lesson_name": "Goal + Obstacle Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goal setting"}, {"content_key": "rapid_questions", "content_value": "What is a goal for this month, and why?.What is your first step, and why?.What obstacle might show up, and why?.What backup plan will you use, and why?.How will you measure progress, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 171: Values in Real Life Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Values in Real Life Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Values-based choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does respect look like when you disagree, and why?.What does honesty look like when you might get in trouble, and why?.What does kindness look like when you’re annoyed, and why?.What does fairness look like when people want different things, and why?.What does courage look like in a small moment, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Values in Real Life Sprint',
    '{"lesson_name": "Values in Real Life Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Values-based choices"}, {"content_key": "rapid_questions", "content_value": "What does respect look like when you disagree, and why?.What does honesty look like when you might get in trouble, and why?.What does kindness look like when you\u2019re annoyed, and why?.What does fairness look like when people want different things, and why?.What does courage look like in a small moment, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 172: Peer Pressure Quick Decisions
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Peer Pressure Quick Decisions', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Standing your ground', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If friends push you to break a rule, what do you do and why?.If friends mock someone, what do you do and why?.If friends pressure you to join gossip, what do you do and why?.If friends push you to post something mean, what do you do and why?.If friends laugh at your goal, what do you do and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Peer Pressure Quick Decisions',
    '{"lesson_name": "Peer Pressure Quick Decisions", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Standing your ground"}, {"content_key": "rapid_questions", "content_value": "If friends push you to break a rule, what do you do and why?.If friends mock someone, what do you do and why?.If friends pressure you to join gossip, what do you do and why?.If friends push you to post something mean, what do you do and why?.If friends laugh at your goal, what do you do and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 173: Conflict Repair With Empathy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Conflict Repair With Empathy', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair after harm', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you hurt someone’s feelings, what do you say and why?.If someone hurts your feelings, what do you say and why?.If you’re misunderstood, what do you do and why?.If a friend breaks trust, what’s a fair next step and why?.What makes forgiveness hard, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Conflict Repair With Empathy',
    '{"lesson_name": "Conflict Repair With Empathy", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair after harm"}, {"content_key": "rapid_questions", "content_value": "If you hurt someone\u2019s feelings, what do you say and why?.If someone hurts your feelings, what do you say and why?.If you\u2019re misunderstood, what do you do and why?.If a friend breaks trust, what\u2019s a fair next step and why?.What makes forgiveness hard, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 174: Digital Ethics Starter
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Ethics Starter', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Right vs wrong online', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the most respectful way to disagree online, and why?.What should you do if a friend shares private info, and why?.Why can “just joking” still be harmful online, and why?.What should happen after cyberbullying, and why?.What does digital integrity mean, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Ethics Starter',
    '{"lesson_name": "Digital Ethics Starter", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Right vs wrong online"}, {"content_key": "rapid_questions", "content_value": "What is the most respectful way to disagree online, and why?.What should you do if a friend shares private info, and why?.Why can \u201cjust joking\u201d still be harmful online, and why?.What should happen after cyberbullying, and why?.What does digital integrity mean, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 175: Time Tradeoff Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Time Tradeoff Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Priorities & balance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you have homework and sports, how do you choose and why?.If you’re tired but have responsibilities, what do you do and why?.If friends want to hang out during study time, what do you do and why?.If you have too many activities, what do you drop and why?.What does balance look like for you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Time Tradeoff Round',
    '{"lesson_name": "Time Tradeoff Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Priorities & balance"}, {"content_key": "rapid_questions", "content_value": "If you have homework and sports, how do you choose and why?.If you\u2019re tired but have responsibilities, what do you do and why?.If friends want to hang out during study time, what do you do and why?.If you have too many activities, what do you drop and why?.What does balance look like for you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 176: Perspective Puzzle Pro
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Puzzle Pro', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Multiple viewpoints', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone interpret the same text message differently than you?.Why might someone avoid group work even if they’re smart?.Why might someone get defensive when corrected?.At a Caribbean carnival event, why might some people feel overwhelmed?.What is one way to check your assumptions, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Puzzle Pro',
    '{"lesson_name": "Perspective Puzzle Pro", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Multiple viewpoints"}, {"content_key": "rapid_questions", "content_value": "Why might someone interpret the same text message differently than you?.Why might someone avoid group work even if they\u2019re smart?.Why might someone get defensive when corrected?.At a Caribbean carnival event, why might some people feel overwhelmed?.What is one way to check your assumptions, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 177: Fair Systems Thinker
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Systems Thinker', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Rules that work', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What school rule would you improve, and why?.What would you change about group grading, and why?.What would make lunch lines more fair, and why?.What tradeoff might your change cause, and why?.Why do good systems reduce conflict, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Systems Thinker',
    '{"lesson_name": "Fair Systems Thinker", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Rules that work"}, {"content_key": "rapid_questions", "content_value": "What school rule would you improve, and why?.What would you change about group grading, and why?.What would make lunch lines more fair, and why?.What tradeoff might your change cause, and why?.Why do good systems reduce conflict, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 178: Resilience Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience Under Pressure', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Handling hard moments', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you recover after a bad grade, and why?.What helps you recover after drama with friends, and why?.What helps you keep trying when you feel stuck, and why?.What helps you handle embarrassment, and why?.What does resilience mean to you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience Under Pressure',
    '{"lesson_name": "Resilience Under Pressure", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Handling hard moments"}, {"content_key": "rapid_questions", "content_value": "What helps you recover after a bad grade, and why?.What helps you recover after drama with friends, and why?.What helps you keep trying when you feel stuck, and why?.What helps you handle embarrassment, and why?.What does resilience mean to you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 179: Leadership Without Being “Bossy”
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership Without Being “Bossy”', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Positive influence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you lead while still listening, and why?.How do you include quiet people, and why?.How do you handle a teammate who refuses to help, and why?.How do you keep a group calm, and why?.Why is trust more important than control, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership Without Being “Bossy”',
    '{"lesson_name": "Leadership Without Being \u201cBossy\u201d", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Positive influence"}, {"content_key": "rapid_questions", "content_value": "How do you lead while still listening, and why?.How do you include quiet people, and why?.How do you handle a teammate who refuses to help, and why?.How do you keep a group calm, and why?.Why is trust more important than control, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 180: Identity Mini-Capstone
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity Mini-Capstone', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 6, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Who you’re becoming', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value do you want to be known for, and why?.What habit are you trying to build, and why?.What kind of friend do you want to be, and why?.What is one fear you want to outgrow, and why?.What is your next step this week, and why?.✅ MODULE 3 — GRADE 7', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity Mini-Capstone',
    '{"lesson_name": "Identity Mini-Capstone", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 6, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Who you\u2019re becoming"}, {"content_key": "rapid_questions", "content_value": "What value do you want to be known for, and why?.What habit are you trying to build, and why?.What kind of friend do you want to be, and why?.What is one fear you want to outgrow, and why?.What is your next step this week, and why?.\u2705 MODULE 3 \u2014 GRADE 7"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 181: Middle-School Mood Pulse
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Middle-School Mood Pulse', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Mood & energy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What emotion describes today?.What drained your energy today?.What boosted your energy today?.What helped you focus today?.What do you want tomorrow to feel like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Middle-School Mood Pulse',
    '{"lesson_name": "Middle-School Mood Pulse", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Mood & energy"}, {"content_key": "rapid_questions", "content_value": "What emotion describes today?.What drained your energy today?.What boosted your energy today?.What helped you focus today?.What do you want tomorrow to feel like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 182: Schedule Survival Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Schedule Survival Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Time management basics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your busiest part of the day?.What helps you remember tasks?.What helps you get work done faster?.What helps you stay on time?.What is one habit you want to improve?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Schedule Survival Dash',
    '{"lesson_name": "Schedule Survival Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Time management basics"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your busiest part of the day?.What helps you remember tasks?.What helps you get work done faster?.What helps you stay on time?.What is one habit you want to improve?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 183: Friendship Comfort Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Comfort Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Belonging', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you feel included?.What makes you feel ignored?.What makes you trust someone?.What makes you feel respected?.What makes you feel safe with friends?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Comfort Check',
    '{"lesson_name": "Friendship Comfort Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Belonging"}, {"content_key": "rapid_questions", "content_value": "What makes you feel included?.What makes you feel ignored?.What makes you trust someone?.What makes you feel respected?.What makes you feel safe with friends?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 184: School Effort Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Effort Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning effort', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What class takes the most effort for you?.What class feels easiest for you?.What helps you start assignments?.What helps you study?.What makes you feel proud in school?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Effort Snap',
    '{"lesson_name": "School Effort Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning effort"}, {"content_key": "rapid_questions", "content_value": "What class takes the most effort for you?.What class feels easiest for you?.What helps you start assignments?.What helps you study?.What makes you feel proud in school?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 185: Creative Curiosity Burst
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Creative Curiosity Burst', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Creativity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What creative thing do you enjoy?.What creative thing do you want to try?.What song or art style matches your mood?.What helps you get ideas?.What makes creativity fun for you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Creative Curiosity Burst',
    '{"lesson_name": "Creative Curiosity Burst", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Creativity"}, {"content_key": "rapid_questions", "content_value": "What creative thing do you enjoy?.What creative thing do you want to try?.What song or art style matches your mood?.What helps you get ideas?.What makes creativity fun for you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 186: Digital Life Quickcheck
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Life Quickcheck', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What app do you use most?.What’s one healthy screen-time boundary?.What’s one unsafe thing people do online?.What do you do if you see hate or bullying online?.What offline activity helps you reset?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Life Quickcheck',
    '{"lesson_name": "Digital Life Quickcheck", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online habits"}, {"content_key": "rapid_questions", "content_value": "What app do you use most?.What\u2019s one healthy screen-time boundary?.What\u2019s one unsafe thing people do online?.What do you do if you see hate or bullying online?.What offline activity helps you reset?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 187: Calm Tools Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm Tools Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What calms you down quickly?.What helps you when you’re overwhelmed?.What helps you when you’re angry?.What helps you when you’re anxious?.Who do you talk to when you need support?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm Tools Pop',
    '{"lesson_name": "Calm Tools Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping skills"}, {"content_key": "rapid_questions", "content_value": "What calms you down quickly?.What helps you when you\u2019re overwhelmed?.What helps you when you\u2019re angry?.What helps you when you\u2019re anxious?.Who do you talk to when you need support?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 188: Team Role Quickfire
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Team Role Quickfire', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What role do you take in group work?.What makes teamwork hard sometimes?.What makes teamwork smooth?.What do you do if someone isn’t helping?.What do you do if the group disagrees?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Team Role Quickfire',
    '{"lesson_name": "Team Role Quickfire", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration"}, {"content_key": "rapid_questions", "content_value": "What role do you take in group work?.What makes teamwork hard sometimes?.What makes teamwork smooth?.What do you do if someone isn\u2019t helping?.What do you do if the group disagrees?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 189: Nature & Community Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nature & Community Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Environment and community', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What place in nature calms you?.What environmental issue do you notice locally?.What is one way to reduce waste?.What is one way to help your community?.What does respect look like in public spaces?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nature & Community Snap',
    '{"lesson_name": "Nature & Community Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Environment and community"}, {"content_key": "rapid_questions", "content_value": "What place in nature calms you?.What environmental issue do you notice locally?.What is one way to reduce waste?.What is one way to help your community?.What does respect look like in public spaces?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 190: End-of-Week Reflection Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'End-of-Week Reflection Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth reflection', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one win this week?.What is one mistake you learned from?.What is one kind thing you did?.What is one goal for next week?.What is your first step?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'End-of-Week Reflection Dash',
    '{"lesson_name": "End-of-Week Reflection Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Growth reflection"}, {"content_key": "rapid_questions", "content_value": "What is one win this week?.What is one mistake you learned from?.What is one kind thing you did?.What is one goal for next week?.What is your first step?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 191: Preferences With Meaning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Preferences With Meaning', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Identity through choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What activity feels most like “you,” and why?.What environment helps you thrive, and why?.What type of friend do you value most, and why?.What hobby supports your mood, and why?.What rule helps people feel safe, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Preferences With Meaning',
    '{"lesson_name": "Preferences With Meaning", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Identity through choices"}, {"content_key": "rapid_questions", "content_value": "What activity feels most like \u201cyou,\u201d and why?.What environment helps you thrive, and why?.What type of friend do you value most, and why?.What hobby supports your mood, and why?.What rule helps people feel safe, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 192: Stress Map Builder
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress Map Builder', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Stress triggers & coping', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What triggers stress for you most often, and why?.What coping tool works best for you, and why?.What helps you refocus after distraction, and why?.What helps you recover after a hard day, and why?.What boundary protects your mental space, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress Map Builder',
    '{"lesson_name": "Stress Map Builder", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Stress triggers & coping"}, {"content_key": "rapid_questions", "content_value": "What triggers stress for you most often, and why?.What coping tool works best for you, and why?.What helps you refocus after distraction, and why?.What helps you recover after a hard day, and why?.What boundary protects your mental space, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 193: Social Conflict Quick Fixes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Social Conflict Quick Fixes', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friend conflict resolution', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If someone leaves you on read, what do you do and why?.If a friend cancels plans last minute, what do you do and why?.If a rumor starts, what do you do and why?.If you feel excluded, what do you say and why?.What makes an apology believable, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Social Conflict Quick Fixes',
    '{"lesson_name": "Social Conflict Quick Fixes", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friend conflict resolution"}, {"content_key": "rapid_questions", "content_value": "If someone leaves you on read, what do you do and why?.If a friend cancels plans last minute, what do you do and why?.If a rumor starts, what do you do and why?.If you feel excluded, what do you say and why?.What makes an apology believable, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 194: Study Strategy Upgrade
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Study Strategy Upgrade', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What study method works best for you, and why?.What helps you remember information, and why?.What helps you avoid procrastination, and why?.What helps you with long-term projects, and why?.What do you do when you feel stuck, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Study Strategy Upgrade',
    '{"lesson_name": "Study Strategy Upgrade", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning habits"}, {"content_key": "rapid_questions", "content_value": "What study method works best for you, and why?.What helps you remember information, and why?.What helps you avoid procrastination, and why?.What helps you with long-term projects, and why?.What do you do when you feel stuck, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 195: Empathy in Public Spaces
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Empathy in Public Spaces', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Inclusion in community', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s a respectful way to welcome a new person, and why?.What do you do when someone is mocked, and why?.At a community Nowruz celebration, how do you show respect, and why?.Why does inclusion matter in groups, and why?.What is one action that builds belonging, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Empathy in Public Spaces',
    '{"lesson_name": "Empathy in Public Spaces", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Inclusion in community"}, {"content_key": "rapid_questions", "content_value": "What\u2019s a respectful way to welcome a new person, and why?.What do you do when someone is mocked, and why?.At a community Nowruz celebration, how do you show respect, and why?.Why does inclusion matter in groups, and why?.What is one action that builds belonging, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 196: Digital Decisions With Consequences
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Decisions With Consequences', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does “think before you post” mean, and why?.What should you do if a friend shares private info, and why?.What should you do if someone is bullied online, and why?.Why is arguing online risky sometimes, and why?.What is a good screen-time boundary, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Decisions With Consequences',
    '{"lesson_name": "Digital Decisions With Consequences", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online responsibility"}, {"content_key": "rapid_questions", "content_value": "What does \u201cthink before you post\u201d mean, and why?.What should you do if a friend shares private info, and why?.What should you do if someone is bullied online, and why?.Why is arguing online risky sometimes, and why?.What is a good screen-time boundary, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 197: Fairness & Power Dynamics
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness & Power Dynamics', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fairness in groups', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is fair when one person dominates a group, and why?.What is fair when two people want the same role, and why?.What is fair when someone breaks trust, and why?.What is fair when rules don’t work, and why?.Why does fairness reduce drama, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness & Power Dynamics',
    '{"lesson_name": "Fairness & Power Dynamics", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fairness in groups"}, {"content_key": "rapid_questions", "content_value": "What is fair when one person dominates a group, and why?.What is fair when two people want the same role, and why?.What is fair when someone breaks trust, and why?.What is fair when rules don\u2019t work, and why?.Why does fairness reduce drama, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 198: Perspective Shift Practice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Shift Practice', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Understanding different views', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone act distant when they’re stressed?.Why might someone joke too much when nervous?.Why might someone avoid eye contact?.At a Filipino barrio fiesta, why might some customs feel unfamiliar?.What question helps you learn without judging?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Shift Practice',
    '{"lesson_name": "Perspective Shift Practice", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Understanding different views"}, {"content_key": "rapid_questions", "content_value": "Why might someone act distant when they\u2019re stressed?.Why might someone joke too much when nervous?.Why might someone avoid eye contact?.At a Filipino barrio fiesta, why might some customs feel unfamiliar?.What question helps you learn without judging?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 199: Teamwork Under Real Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork Under Real Pressure', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration challenges', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if your team is behind, and why?.What do you do if someone refuses feedback, and why?.What do you do if your idea gets ignored, and why?.What do you do if conflict starts, and why?.What makes a team trustworthy, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Under Real Pressure',
    '{"lesson_name": "Teamwork Under Real Pressure", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration challenges"}, {"content_key": "rapid_questions", "content_value": "What do you do if your team is behind, and why?.What do you do if someone refuses feedback, and why?.What do you do if your idea gets ignored, and why?.What do you do if conflict starts, and why?.What makes a team trustworthy, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 200: Goals + Identity Tie-In
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goals + Identity Tie-In', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Future pathways', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What goal matters most right now, and why?.What is your first step, and why?.What obstacle might show up, and why?.What support do you need, and why?.How will you know you improved, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goals + Identity Tie-In',
    '{"lesson_name": "Goals + Identity Tie-In", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Future pathways"}, {"content_key": "rapid_questions", "content_value": "What goal matters most right now, and why?.What is your first step, and why?.What obstacle might show up, and why?.What support do you need, and why?.How will you know you improved, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 201: Values Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Values Under Pressure', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Values-based decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When is honesty hardest, and why choose it anyway?.When is kindness hardest, and why choose it anyway?.When is fairness hardest, and why protect it anyway?.When is courage hardest, and why act anyway?.What value do you want people to trust you for, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Values Under Pressure',
    '{"lesson_name": "Values Under Pressure", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Values-based decisions"}, {"content_key": "rapid_questions", "content_value": "When is honesty hardest, and why choose it anyway?.When is kindness hardest, and why choose it anyway?.When is fairness hardest, and why protect it anyway?.When is courage hardest, and why act anyway?.What value do you want people to trust you for, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 202: Social Media Ethics Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Social Media Ethics Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online morals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If a friend posts a mean joke, what do you do and why?.If you’re tagged in drama, what do you do and why?.If someone shares a private screenshot, what should happen and why?.If a rumor spreads fast, what is the responsible move and why?.What does digital integrity mean to you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Social Media Ethics Round',
    '{"lesson_name": "Social Media Ethics Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online morals"}, {"content_key": "rapid_questions", "content_value": "If a friend posts a mean joke, what do you do and why?.If you\u2019re tagged in drama, what do you do and why?.If someone shares a private screenshot, what should happen and why?.If a rumor spreads fast, what is the responsible move and why?.What does digital integrity mean to you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 203: Repair After Trust Breaks
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Repair After Trust Breaks', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Rebuilding trust', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you lie and get caught, what do you do next and why?.If a friend lies to you, what’s a fair response and why?.If you share a secret by accident, how do you repair it and why?.If someone apologizes, how do you decide to forgive and why?.What makes trust stronger over time, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Repair After Trust Breaks',
    '{"lesson_name": "Repair After Trust Breaks", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Rebuilding trust"}, {"content_key": "rapid_questions", "content_value": "If you lie and get caught, what do you do next and why?.If a friend lies to you, what\u2019s a fair response and why?.If you share a secret by accident, how do you repair it and why?.If someone apologizes, how do you decide to forgive and why?.What makes trust stronger over time, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 204: Perspective on “Attention-Seeking”
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective on “Attention-Seeking”', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Interpreting behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone act loud in class, and why?.Why might someone brag a lot, and why?.Why might someone act cold when hurt, and why?.At a Korean Chuseok gathering, why do traditions matter to families, and why?.What’s a respectful way to respond instead of judging, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective on “Attention-Seeking”',
    '{"lesson_name": "Perspective on \u201cAttention-Seeking\u201d", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Interpreting behavior"}, {"content_key": "rapid_questions", "content_value": "Why might someone act loud in class, and why?.Why might someone brag a lot, and why?.Why might someone act cold when hurt, and why?.At a Korean Chuseok gathering, why do traditions matter to families, and why?.What\u2019s a respectful way to respond instead of judging, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 205: Competing Priorities Tradeoffs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Competing Priorities Tradeoffs', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Balance decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you’re burned out but have commitments, what do you do and why?.If friends want you online but you need rest, what do you do and why?.If you want perfect grades but also joy, what balance do you choose and why?.If your schedule is too full, what do you drop and why?.What boundary protects your peace most, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Competing Priorities Tradeoffs',
    '{"lesson_name": "Competing Priorities Tradeoffs", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Balance decisions"}, {"content_key": "rapid_questions", "content_value": "If you\u2019re burned out but have commitments, what do you do and why?.If friends want you online but you need rest, what do you do and why?.If you want perfect grades but also joy, what balance do you choose and why?.If your schedule is too full, what do you drop and why?.What boundary protects your peace most, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 206: Fair Systems Starter
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Systems Starter', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fixing group rules', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What school rule creates stress, and what would you change and why?.What would make group work grading more fair, and why?.What would reduce hallway conflict, and why?.What tradeoff might your change create, and why?.Why do better systems reduce bullying, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Systems Starter',
    '{"lesson_name": "Fair Systems Starter", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fixing group rules"}, {"content_key": "rapid_questions", "content_value": "What school rule creates stress, and what would you change and why?.What would make group work grading more fair, and why?.What would reduce hallway conflict, and why?.What tradeoff might your change create, and why?.Why do better systems reduce bullying, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 207: Resilience With Meaning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience With Meaning', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning from setbacks', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What setback taught you the most, and why?.What helps you recover faster, and why?.What belief helps you keep going, and why?.What failure are you proud you survived, and why?.What does resilience mean to you now, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience With Meaning',
    '{"lesson_name": "Resilience With Meaning", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning from setbacks"}, {"content_key": "rapid_questions", "content_value": "What setback taught you the most, and why?.What helps you recover faster, and why?.What belief helps you keep going, and why?.What failure are you proud you survived, and why?.What does resilience mean to you now, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 208: Leadership Without Popularity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership Without Popularity', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Leading ethically', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you lead even if it’s not popular, and why?.How do you stand up for someone without escalating drama, and why?.How do you include quiet people, and why?.How do you handle being misunderstood, and why?.Why is courage more important than approval, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership Without Popularity',
    '{"lesson_name": "Leadership Without Popularity", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Leading ethically"}, {"content_key": "rapid_questions", "content_value": "How do you lead even if it\u2019s not popular, and why?.How do you stand up for someone without escalating drama, and why?.How do you include quiet people, and why?.How do you handle being misunderstood, and why?.Why is courage more important than approval, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 209: Identity & Belonging Inquiry
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity & Belonging Inquiry', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Who you are becoming', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value defines you most right now, and why?.What part of your identity is changing, and why?.What kind of friend do you want to be known as, and why?.What habit do you want to build to match your goals, and why?.What is your next step this week, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity & Belonging Inquiry',
    '{"lesson_name": "Identity & Belonging Inquiry", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Who you are becoming"}, {"content_key": "rapid_questions", "content_value": "What value defines you most right now, and why?.What part of your identity is changing, and why?.What kind of friend do you want to be known as, and why?.What habit do you want to build to match your goals, and why?.What is your next step this week, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 210: Ethical Choice Mini-Capstone
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ethical Choice Mini-Capstone', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 7, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Doing the right thing', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If telling the truth hurts someone, what’s the respectful truth and why?.If you see bullying but fear backlash, what do you do and why?.If a friend cheats and asks you to cover, what do you do and why?.If you made a public mistake, how do you repair it and why?.What principle do you refuse to compromise, and why?.✅ MODULE 3 — GRADE 8', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ethical Choice Mini-Capstone',
    '{"lesson_name": "Ethical Choice Mini-Capstone", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 7, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Doing the right thing"}, {"content_key": "rapid_questions", "content_value": "If telling the truth hurts someone, what\u2019s the respectful truth and why?.If you see bullying but fear backlash, what do you do and why?.If a friend cheats and asks you to cover, what do you do and why?.If you made a public mistake, how do you repair it and why?.What principle do you refuse to compromise, and why?.\u2705 MODULE 3 \u2014 GRADE 8"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 211: Energy & Focus Pulse
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Energy & Focus Pulse', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Mood and productivity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your energy level today?.What boosted your energy?.What lowered your energy?.What helped you focus?.What will help you tomorrow?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Energy & Focus Pulse',
    '{"lesson_name": "Energy & Focus Pulse", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Mood and productivity"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your energy level today?.What boosted your energy?.What lowered your energy?.What helped you focus?.What will help you tomorrow?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 212: Routine Upgrade Dash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Routine Upgrade Dash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Habits & routines', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What habit helps you most right now?.What habit do you want to build?.What habit do you want to reduce?.What time of day do you work best?.What’s one small change you can make this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Routine Upgrade Dash',
    '{"lesson_name": "Routine Upgrade Dash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Habits & routines"}, {"content_key": "rapid_questions", "content_value": "What habit helps you most right now?.What habit do you want to build?.What habit do you want to reduce?.What time of day do you work best?.What\u2019s one small change you can make this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 213: Friend Circle Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friend Circle Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social comfort', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes a friendship feel easy?.What makes a friendship feel stressful?.What quality makes you trust someone?.What makes you feel respected?.What makes you feel included?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friend Circle Check',
    '{"lesson_name": "Friend Circle Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social comfort"}, {"content_key": "rapid_questions", "content_value": "What makes a friendship feel easy?.What makes a friendship feel stressful?.What quality makes you trust someone?.What makes you feel respected?.What makes you feel included?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 214: Study Habit Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Study Habit Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you start studying?.What helps you remember information?.What distracts you the most?.What helps you finish assignments?.What helps you prepare for tests?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Study Habit Sprint',
    '{"lesson_name": "Study Habit Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning habits"}, {"content_key": "rapid_questions", "content_value": "What helps you start studying?.What helps you remember information?.What distracts you the most?.What helps you finish assignments?.What helps you prepare for tests?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 215: Creativity Comfort Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Creativity Comfort Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Creative expression', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What creative activity fits you best?.What creative skill do you want to try?.What music helps your mood?.What helps you get ideas?.What makes creativity feel safe for you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Creativity Comfort Round',
    '{"lesson_name": "Creativity Comfort Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Creative expression"}, {"content_key": "rapid_questions", "content_value": "What creative activity fits you best?.What creative skill do you want to try?.What music helps your mood?.What helps you get ideas?.What makes creativity feel safe for you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 216: Digital Balance Quickcheck
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Balance Quickcheck', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Tech habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What app do you use most and why?.What’s one sign you need a screen break?.What’s one rule you follow online?.What do you do if you see online bullying?.What offline activity helps you reset?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Balance Quickcheck',
    '{"lesson_name": "Digital Balance Quickcheck", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Tech habits"}, {"content_key": "rapid_questions", "content_value": "What app do you use most and why?.What\u2019s one sign you need a screen break?.What\u2019s one rule you follow online?.What do you do if you see online bullying?.What offline activity helps you reset?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 217: Calm Under Stress Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Calm Under Stress Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping tools', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you calm down quickly?.What helps you when you feel overwhelmed?.What helps you when you feel anxious?.What helps you when you feel angry?.Who do you go to for support?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Calm Under Stress Pop',
    '{"lesson_name": "Calm Under Stress Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping tools"}, {"content_key": "rapid_questions", "content_value": "What helps you calm down quickly?.What helps you when you feel overwhelmed?.What helps you when you feel anxious?.What helps you when you feel angry?.Who do you go to for support?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 218: Teamwork Smooth Moves
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork Smooth Moves', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What role do you usually take in group work?.What makes a team effective?.What makes a team messy?.What do you do if someone won’t help?.What do you do if the team disagrees?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Smooth Moves',
    '{"lesson_name": "Teamwork Smooth Moves", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration"}, {"content_key": "rapid_questions", "content_value": "What role do you usually take in group work?.What makes a team effective?.What makes a team messy?.What do you do if someone won\u2019t help?.What do you do if the team disagrees?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 219: Community Respect Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community Respect Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Public behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does respect look like in a crowd?.What does kindness look like in a line?.What do you do if someone is left out?.What do you do if someone makes a mistake?.What helps your community feel safer?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community Respect Check',
    '{"lesson_name": "Community Respect Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Public behavior"}, {"content_key": "rapid_questions", "content_value": "What does respect look like in a crowd?.What does kindness look like in a line?.What do you do if someone is left out?.What do you do if someone makes a mistake?.What helps your community feel safer?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 220: Growth Reflection Wrap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Growth Reflection Wrap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Progress', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one thing you improved recently?.What is one mistake you learned from?.What is one goal you’re working on?.What is one step you’ll take next?.What is one reason you can be proud?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Growth Reflection Wrap',
    '{"lesson_name": "Growth Reflection Wrap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Progress"}, {"content_key": "rapid_questions", "content_value": "What is one thing you improved recently?.What is one mistake you learned from?.What is one goal you\u2019re working on?.What is one step you\u2019ll take next?.What is one reason you can be proud?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 221: Identity Through Choices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity Through Choices', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences with meaning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value matters most to you right now, and why?.What environment helps you thrive, and why?.What kind of friend do you respect most, and why?.What activity helps your mental health, and why?.What goal feels most important, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity Through Choices',
    '{"lesson_name": "Identity Through Choices", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences with meaning"}, {"content_key": "rapid_questions", "content_value": "What value matters most to you right now, and why?.What environment helps you thrive, and why?.What kind of friend do you respect most, and why?.What activity helps your mental health, and why?.What goal feels most important, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 222: Stress + Strategy Upgrade
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress + Strategy Upgrade', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping plans', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What triggers stress for you most, and why?.What coping tool works best, and why?.What helps you recover after a bad day, and why?.What helps you refocus after distraction, and why?.What boundary protects your peace, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress + Strategy Upgrade',
    '{"lesson_name": "Stress + Strategy Upgrade", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping plans"}, {"content_key": "rapid_questions", "content_value": "What triggers stress for you most, and why?.What coping tool works best, and why?.What helps you recover after a bad day, and why?.What helps you refocus after distraction, and why?.What boundary protects your peace, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 223: Communication That Works
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Communication That Works', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Healthy communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes communication feel respectful, and why?.What makes communication break down, and why?.What’s a healthy way to say “no,” and why?.What’s a healthy way to set a boundary, and why?.What makes an apology effective, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Communication That Works',
    '{"lesson_name": "Communication That Works", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Healthy communication"}, {"content_key": "rapid_questions", "content_value": "What makes communication feel respectful, and why?.What makes communication break down, and why?.What\u2019s a healthy way to say \u201cno,\u201d and why?.What\u2019s a healthy way to set a boundary, and why?.What makes an apology effective, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 224: Study Systems Builder
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Study Systems Builder', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning systems', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What study method works best for you, and why?.What helps you avoid procrastination, and why?.What helps you learn from mistakes, and why?.What helps with long-term projects, and why?.What helps you stay consistent, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Study Systems Builder',
    '{"lesson_name": "Study Systems Builder", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning systems"}, {"content_key": "rapid_questions", "content_value": "What study method works best for you, and why?.What helps you avoid procrastination, and why?.What helps you learn from mistakes, and why?.What helps with long-term projects, and why?.What helps you stay consistent, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 225: Empathy in Complex Moments
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Empathy in Complex Moments', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Perspective-taking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone act cold when they’re hurt?.Why might someone act loud when insecure?.Why might someone reject help even if they need it?.At a Māori kapa haka performance, why is respectful attention important?.What question helps you understand someone before reacting?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Empathy in Complex Moments',
    '{"lesson_name": "Empathy in Complex Moments", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Perspective-taking"}, {"content_key": "rapid_questions", "content_value": "Why might someone act cold when they\u2019re hurt?.Why might someone act loud when insecure?.Why might someone reject help even if they need it?.At a M\u0101ori kapa haka performance, why is respectful attention important?.What question helps you understand someone before reacting?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 226: Online Consequences Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Online Consequences Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Digital choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why can posting in anger backfire, and why?.What should you do if a friend shares private screenshots, and why?.What’s a respectful way to disagree online, and why?.What’s a smart response to online drama, and why?.What does digital integrity mean, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Online Consequences Round',
    '{"lesson_name": "Online Consequences Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Digital choices"}, {"content_key": "rapid_questions", "content_value": "Why can posting in anger backfire, and why?.What should you do if a friend shares private screenshots, and why?.What\u2019s a respectful way to disagree online, and why?.What\u2019s a smart response to online drama, and why?.What does digital integrity mean, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 227: Fairness & Power Moves
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness & Power Moves', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fairness in groups', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s fair when one person dominates the group, and why?.What’s fair when two people want the same role, and why?.What’s fair when someone breaks a rule, and why?.What’s fair when rules don’t work, and why?.Why does fairness reduce conflict, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness & Power Moves',
    '{"lesson_name": "Fairness & Power Moves", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fairness in groups"}, {"content_key": "rapid_questions", "content_value": "What\u2019s fair when one person dominates the group, and why?.What\u2019s fair when two people want the same role, and why?.What\u2019s fair when someone breaks a rule, and why?.What\u2019s fair when rules don\u2019t work, and why?.Why does fairness reduce conflict, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 228: Teamwork With Accountability
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork With Accountability', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration under pressure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if your teammate does nothing, and why?.What do you do if your idea is ignored, and why?.What do you do if conflict starts, and why?.What do you do if your team is behind, and why?.What makes a leader credible, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork With Accountability',
    '{"lesson_name": "Teamwork With Accountability", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration under pressure"}, {"content_key": "rapid_questions", "content_value": "What do you do if your teammate does nothing, and why?.What do you do if your idea is ignored, and why?.What do you do if conflict starts, and why?.What do you do if your team is behind, and why?.What makes a leader credible, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 229: Resilience Reframe Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience Reframe Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Bouncing back with meaning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What setback taught you something, and why?.What helps you recover faster, and why?.What belief keeps you going, and why?.What habit supports resilience, and why?.What does “growth” mean to you now, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience Reframe Round',
    '{"lesson_name": "Resilience Reframe Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Bouncing back with meaning"}, {"content_key": "rapid_questions", "content_value": "What setback taught you something, and why?.What helps you recover faster, and why?.What belief keeps you going, and why?.What habit supports resilience, and why?.What does \u201cgrowth\u201d mean to you now, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 230: Future Pathway Mapping
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Pathway Mapping', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals + identity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What goal feels most important this year, and why?.What is your first step, and why?.What obstacle might appear, and why?.What backup plan will you use, and why?.What skill will help you most, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Pathway Mapping',
    '{"lesson_name": "Future Pathway Mapping", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals + identity"}, {"content_key": "rapid_questions", "content_value": "What goal feels most important this year, and why?.What is your first step, and why?.What obstacle might appear, and why?.What backup plan will you use, and why?.What skill will help you most, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 231: Integrity Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Integrity Under Pressure', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Values-based choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When is honesty hardest, and why choose it anyway?.When is kindness hardest, and why choose it anyway?.When is fairness hardest, and why protect it anyway?.When is courage hardest, and why act anyway?.What value do you refuse to compromise, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Integrity Under Pressure',
    '{"lesson_name": "Integrity Under Pressure", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Values-based choices"}, {"content_key": "rapid_questions", "content_value": "When is honesty hardest, and why choose it anyway?.When is kindness hardest, and why choose it anyway?.When is fairness hardest, and why protect it anyway?.When is courage hardest, and why act anyway?.What value do you refuse to compromise, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 232: Reputation vs Reality Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Reputation vs Reality Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social identity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s the difference between being liked and being respected, and why?.What’s the difference between confidence and attention-seeking, and why?.What’s the difference between privacy and secrecy, and why?.What’s the difference between joking and harm, and why?.What’s the difference between fitting in and belonging, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Reputation vs Reality Round',
    '{"lesson_name": "Reputation vs Reality Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social identity"}, {"content_key": "rapid_questions", "content_value": "What\u2019s the difference between being liked and being respected, and why?.What\u2019s the difference between confidence and attention-seeking, and why?.What\u2019s the difference between privacy and secrecy, and why?.What\u2019s the difference between joking and harm, and why?.What\u2019s the difference between fitting in and belonging, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 233: Repair After Real Harm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Repair After Real Harm', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Rebuilding trust', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you broke someone’s trust, what’s step one and why?.If someone broke your trust, what’s fair next and why?.If a secret spreads, how do you repair it and why?.If you’re misunderstood publicly, what do you do and why?.What makes forgiveness possible, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Repair After Real Harm',
    '{"lesson_name": "Repair After Real Harm", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Rebuilding trust"}, {"content_key": "rapid_questions", "content_value": "If you broke someone\u2019s trust, what\u2019s step one and why?.If someone broke your trust, what\u2019s fair next and why?.If a secret spreads, how do you repair it and why?.If you\u2019re misunderstood publicly, what do you do and why?.What makes forgiveness possible, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 234: Digital Ethics Deep Starter
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Ethics Deep Starter', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online morals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you see cyberbullying, what should you do and why?.If a friend posts something hateful, what should you do and why?.If someone shares a private photo, what should happen and why?.If a rumor spreads fast, what is the responsible move and why?.What does digital integrity mean to you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Ethics Deep Starter',
    '{"lesson_name": "Digital Ethics Deep Starter", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online morals"}, {"content_key": "rapid_questions", "content_value": "If you see cyberbullying, what should you do and why?.If a friend posts something hateful, what should you do and why?.If someone shares a private photo, what should happen and why?.If a rumor spreads fast, what is the responsible move and why?.What does digital integrity mean to you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 235: Systems Thinker Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Systems Thinker Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Improving school systems', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What school system causes stress, and what would you change and why?.What would make grading feel more fair, and why?.What would make group work more fair, and why?.What tradeoff might your change create, and why?.Why do better systems reduce conflict, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Systems Thinker Round',
    '{"lesson_name": "Systems Thinker Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Improving school systems"}, {"content_key": "rapid_questions", "content_value": "What school system causes stress, and what would you change and why?.What would make grading feel more fair, and why?.What would make group work more fair, and why?.What tradeoff might your change create, and why?.Why do better systems reduce conflict, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 236: Perspective in Sensitive Moments
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective in Sensitive Moments', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Empathy + context', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone react strongly to small comments, and why?.Why might someone withdraw when hurt, and why?.Why might someone refuse help, and why?.At a Puerto Rican parade, why might cultural pride matter deeply, and why?.What’s a respectful way to ask questions, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective in Sensitive Moments',
    '{"lesson_name": "Perspective in Sensitive Moments", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Empathy + context"}, {"content_key": "rapid_questions", "content_value": "Why might someone react strongly to small comments, and why?.Why might someone withdraw when hurt, and why?.Why might someone refuse help, and why?.At a Puerto Rican parade, why might cultural pride matter deeply, and why?.What\u2019s a respectful way to ask questions, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 237: Boundaries & Self-Respect
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Boundaries & Self-Respect', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Personal boundaries', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What boundary protects your mental health most, and why?.What boundary helps your friendships stay healthy, and why?.What boundary helps you stay focused, and why?.What boundary helps online life stay safe, and why?.Why are boundaries a form of respect, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Boundaries & Self-Respect',
    '{"lesson_name": "Boundaries & Self-Respect", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Personal boundaries"}, {"content_key": "rapid_questions", "content_value": "What boundary protects your mental health most, and why?.What boundary helps your friendships stay healthy, and why?.What boundary helps you stay focused, and why?.What boundary helps online life stay safe, and why?.Why are boundaries a form of respect, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 238: Leadership With Ethics
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership With Ethics', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Leading the right way', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you lead without controlling people, and why?.How do you stand up for someone without escalating drama, and why?.How do you include quiet voices, and why?.How do you handle criticism, and why?.Why does trust matter more than popularity, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership With Ethics',
    '{"lesson_name": "Leadership With Ethics", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Leading the right way"}, {"content_key": "rapid_questions", "content_value": "How do you lead without controlling people, and why?.How do you stand up for someone without escalating drama, and why?.How do you include quiet voices, and why?.How do you handle criticism, and why?.Why does trust matter more than popularity, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 239: Resilience With Purpose
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience With Purpose', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Meaning from challenges', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What setback shaped you, and why?.What belief helps you keep going, and why?.What habit helps you recover faster, and why?.What failure taught you the most, and why?.What does resilience mean to you now, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience With Purpose',
    '{"lesson_name": "Resilience With Purpose", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Meaning from challenges"}, {"content_key": "rapid_questions", "content_value": "What setback shaped you, and why?.What belief helps you keep going, and why?.What habit helps you recover faster, and why?.What failure taught you the most, and why?.What does resilience mean to you now, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 240: Identity & Future Mini-Capstone
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity & Future Mini-Capstone', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 8, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Who you’re becoming', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you want to be known for, and why?.What value will guide your choices, and why?.What habit will support your goals, and why?.What fear do you want to outgrow, and why?.What is your next step this month, and why?.⭐ MODULE 3 — GRADE 9 — RAPID QUESTIONS & ANSWERS.✅ MODULE 3 — GRADE 9', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity & Future Mini-Capstone',
    '{"lesson_name": "Identity & Future Mini-Capstone", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 8, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Who you\u2019re becoming"}, {"content_key": "rapid_questions", "content_value": "What do you want to be known for, and why?.What value will guide your choices, and why?.What habit will support your goals, and why?.What fear do you want to outgrow, and why?.What is your next step this month, and why?.\u2b50 MODULE 3 \u2014 GRADE 9 \u2014 RAPID QUESTIONS & ANSWERS.\u2705 MODULE 3 \u2014 GRADE 9"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 241: Day-in-5 Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Day-in-5 Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Daily life snapshot', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your mood right now?.What’s one good thing from today?.What’s one annoying thing from today?.What’s one thing you’re looking forward to?.What’s one thing you want to do better tomorrow?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Day-in-5 Check',
    '{"lesson_name": "Day-in-5 Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Daily life snapshot"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your mood right now?.What\u2019s one good thing from today?.What\u2019s one annoying thing from today?.What\u2019s one thing you\u2019re looking forward to?.What\u2019s one thing you want to do better tomorrow?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 242: School Pace Pulse
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Pace Pulse', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'School routines', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Which class feels fastest?.Which class feels slowest?.What helps you stay organized?.What distracts you most in school?.What’s one habit that helps your grades?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Pace Pulse',
    '{"lesson_name": "School Pace Pulse", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "School routines"}, {"content_key": "rapid_questions", "content_value": "Which class feels fastest?.Which class feels slowest?.What helps you stay organized?.What distracts you most in school?.What\u2019s one habit that helps your grades?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 243: Friend Vibes Quickscan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friend Vibes Quickscan', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friend dynamics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you trust someone?.What makes you feel respected?.What makes you feel uncomfortable?.What makes a friend feel safe with you?.What’s one thing you do to keep friendships healthy?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friend Vibes Quickscan',
    '{"lesson_name": "Friend Vibes Quickscan", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friend dynamics"}, {"content_key": "rapid_questions", "content_value": "What makes you trust someone?.What makes you feel respected?.What makes you feel uncomfortable?.What makes a friend feel safe with you?.What\u2019s one thing you do to keep friendships healthy?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 244: Stress Meter Mini
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress Meter Mini', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Stress & coping', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What stresses you most this week?.What calms you down fastest?.What helps you reset after a bad moment?.Who do you talk to when stressed?.What’s one healthy break you take?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress Meter Mini',
    '{"lesson_name": "Stress Meter Mini", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Stress & coping"}, {"content_key": "rapid_questions", "content_value": "What stresses you most this week?.What calms you down fastest?.What helps you reset after a bad moment?.Who do you talk to when stressed?.What\u2019s one healthy break you take?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 245: Media & Mood Picks
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Media & Mood Picks', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Music/media choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What song matches your mood today?.What show/movie helps you relax?.What kind of content drains you?.What kind of content inspires you?.What’s one offline thing you enjoy?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Media & Mood Picks',
    '{"lesson_name": "Media & Mood Picks", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Music/media choices"}, {"content_key": "rapid_questions", "content_value": "What song matches your mood today?.What show/movie helps you relax?.What kind of content drains you?.What kind of content inspires you?.What\u2019s one offline thing you enjoy?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 246: Digital Safety Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Safety Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s one rule you follow online?.What’s one thing you never share online?.What do you do if you see cyberbullying?.What’s a sign you need a screen break?.What’s one positive way you use tech?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Safety Snap',
    '{"lesson_name": "Digital Safety Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online habits"}, {"content_key": "rapid_questions", "content_value": "What\u2019s one rule you follow online?.What\u2019s one thing you never share online?.What do you do if you see cyberbullying?.What\u2019s a sign you need a screen break?.What\u2019s one positive way you use tech?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 247: Teamwork Quick Roles
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork Quick Roles', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Group work', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What role do you take in groups?.What makes group work frustrating?.What makes group work successful?.What do you do if someone does nothing?.What do you do if there’s disagreement?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Quick Roles',
    '{"lesson_name": "Teamwork Quick Roles", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Group work"}, {"content_key": "rapid_questions", "content_value": "What role do you take in groups?.What makes group work frustrating?.What makes group work successful?.What do you do if someone does nothing?.What do you do if there\u2019s disagreement?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 248: Community Respect Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community Respect Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Respect in public spaces', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does respect look like in a crowd?.What’s a kind thing to do in a line?.What do you do if someone is left out?.What do you do if someone is embarrassed?.What’s one way to welcome new people?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community Respect Pop',
    '{"lesson_name": "Community Respect Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Respect in public spaces"}, {"content_key": "rapid_questions", "content_value": "What does respect look like in a crowd?.What\u2019s a kind thing to do in a line?.What do you do if someone is left out?.What do you do if someone is embarrassed?.What\u2019s one way to welcome new people?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 249: Small Goal Quickstart
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Small Goal Quickstart', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Goals', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s one goal for this month?.What’s the first step?.What might get in the way?.What helps you stay motivated?.How will you know you improved?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Small Goal Quickstart',
    '{"lesson_name": "Small Goal Quickstart", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Goals"}, {"content_key": "rapid_questions", "content_value": "What\u2019s one goal for this month?.What\u2019s the first step?.What might get in the way?.What helps you stay motivated?.How will you know you improved?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 250: Values Snapshot Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Values Snapshot Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Personal values', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value matters most to you right now?.What value do you want friends to see in you?.What value do you want teachers to see in you?.What value is hardest to live by?.What value are you improving this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Values Snapshot Round',
    '{"lesson_name": "Values Snapshot Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Personal values"}, {"content_key": "rapid_questions", "content_value": "What value matters most to you right now?.What value do you want friends to see in you?.What value do you want teachers to see in you?.What value is hardest to live by?.What value are you improving this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 251: Choice + Why Quickfire
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Choice + Why Quickfire', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Preferences with reasons', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What class matters most to you, and why?.What hobby supports your mood, and why?.What friend trait matters most, and why?.What boundary helps you most, and why?.What habit improves your life, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Choice + Why Quickfire',
    '{"lesson_name": "Choice + Why Quickfire", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Preferences with reasons"}, {"content_key": "rapid_questions", "content_value": "What class matters most to you, and why?.What hobby supports your mood, and why?.What friend trait matters most, and why?.What boundary helps you most, and why?.What habit improves your life, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 252: Stress Trigger Map
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress Trigger Map', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Stress patterns', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What triggers stress for you most, and why?.What coping strategy works best, and why?.What helps you refocus after distraction, and why?.What helps you sleep better, and why?.What boundary protects your peace, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress Trigger Map',
    '{"lesson_name": "Stress Trigger Map", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Stress patterns"}, {"content_key": "rapid_questions", "content_value": "What triggers stress for you most, and why?.What coping strategy works best, and why?.What helps you refocus after distraction, and why?.What helps you sleep better, and why?.What boundary protects your peace, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 253: Friend Conflict Fixes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friend Conflict Fixes', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If someone “leaves you on read,” what do you do and why?.If a joke hurts someone, what do you say and why?.If you feel excluded, what do you say and why?.If you mess up, what makes an apology real and why?.If gossip starts, what’s a smart response and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friend Conflict Fixes',
    '{"lesson_name": "Friend Conflict Fixes", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair skills"}, {"content_key": "rapid_questions", "content_value": "If someone \u201cleaves you on read,\u201d what do you do and why?.If a joke hurts someone, what do you say and why?.If you feel excluded, what do you say and why?.If you mess up, what makes an apology real and why?.If gossip starts, what\u2019s a smart response and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 254: Digital Decisions & Consequences
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Decisions & Consequences', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does “pause before posting” mean, and why?.What should you do if a friend shares private info, and why?.What’s a respectful way to disagree online, and why?.What’s a smart response to online drama, and why?.What does digital integrity mean, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Decisions & Consequences',
    '{"lesson_name": "Digital Decisions & Consequences", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online responsibility"}, {"content_key": "rapid_questions", "content_value": "What does \u201cpause before posting\u201d mean, and why?.What should you do if a friend shares private info, and why?.What\u2019s a respectful way to disagree online, and why?.What\u2019s a smart response to online drama, and why?.What does digital integrity mean, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 255: Time Tradeoffs Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Time Tradeoffs Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Balancing priorities', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you’re tired but have homework, what do you do and why?.If friends want you out but you need study time, what do you do and why?.If you’re overwhelmed, what do you drop first and why?.What’s one healthy way you rest without avoiding work, and why?.What does balance look like for you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Time Tradeoffs Round',
    '{"lesson_name": "Time Tradeoffs Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Balancing priorities"}, {"content_key": "rapid_questions", "content_value": "If you\u2019re tired but have homework, what do you do and why?.If friends want you out but you need study time, what do you do and why?.If you\u2019re overwhelmed, what do you drop first and why?.What\u2019s one healthy way you rest without avoiding work, and why?.What does balance look like for you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 256: Perspective Switch Practice
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective Switch Practice', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Understanding behavior', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone act cold when hurt?.Why might someone brag when insecure?.Why might someone avoid group work even if capable?.At a cultural celebration (Diwali, Lunar New Year, Juneteenth), why is respectful curiosity important?.What question helps you understand before reacting?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective Switch Practice',
    '{"lesson_name": "Perspective Switch Practice", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Understanding behavior"}, {"content_key": "rapid_questions", "content_value": "Why might someone act cold when hurt?.Why might someone brag when insecure?.Why might someone avoid group work even if capable?.At a cultural celebration (Diwali, Lunar New Year, Juneteenth), why is respectful curiosity important?.What question helps you understand before reacting?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 257: Teamwork Accountability
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork Accountability', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Group collaboration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if one person dominates the group, and why?.What do you do if someone does nothing, and why?.What do you do if your idea gets ignored, and why?.What makes feedback respectful, and why?.What makes a leader credible, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork Accountability',
    '{"lesson_name": "Teamwork Accountability", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Group collaboration"}, {"content_key": "rapid_questions", "content_value": "What do you do if one person dominates the group, and why?.What do you do if someone does nothing, and why?.What do you do if your idea gets ignored, and why?.What makes feedback respectful, and why?.What makes a leader credible, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 258: Identity & Belonging
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity & Belonging', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Self and social identity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When do you feel like you truly belong, and why?.What part of your identity feels strongest right now, and why?.What pressure do teens face most, and why?.What boundary helps you stay authentic, and why?.What’s one way you support others’ belonging, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity & Belonging',
    '{"lesson_name": "Identity & Belonging", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Self and social identity"}, {"content_key": "rapid_questions", "content_value": "When do you feel like you truly belong, and why?.What part of your identity feels strongest right now, and why?.What pressure do teens face most, and why?.What boundary helps you stay authentic, and why?.What\u2019s one way you support others\u2019 belonging, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 259: Fairness in Real Situations
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness in Real Situations', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Ethics & fairness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s fair when two people want the same role, and why?.What’s fair when someone breaks a rule, and why?.What’s fair when someone apologizes—what comes next, and why?.What’s fair when a friend wants you to lie for them, and why?.Why does fairness reduce drama, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness in Real Situations',
    '{"lesson_name": "Fairness in Real Situations", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Ethics & fairness"}, {"content_key": "rapid_questions", "content_value": "What\u2019s fair when two people want the same role, and why?.What\u2019s fair when someone breaks a rule, and why?.What\u2019s fair when someone apologizes\u2014what comes next, and why?.What\u2019s fair when a friend wants you to lie for them, and why?.Why does fairness reduce drama, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 260: Goal + Obstacle + Backup
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goal + Obstacle + Backup', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What goal matters most this semester, and why?.What’s step one, and why is it first?.What obstacle is most likely, and why?.What backup plan will you use, and why?.How will you measure progress, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goal + Obstacle + Backup',
    '{"lesson_name": "Goal + Obstacle + Backup", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Planning"}, {"content_key": "rapid_questions", "content_value": "What goal matters most this semester, and why?.What\u2019s step one, and why is it first?.What obstacle is most likely, and why?.What backup plan will you use, and why?.How will you measure progress, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 261: Integrity Under Pressure
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Integrity Under Pressure', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Values-based decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If honesty gets you in trouble, what do you do and why?.If kindness makes you look “uncool,” what do you do and why?.If fairness costs you something, what do you do and why?.If a friend pressures you to break rules, what do you do and why?.What value won’t you compromise, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Integrity Under Pressure',
    '{"lesson_name": "Integrity Under Pressure", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Values-based decisions"}, {"content_key": "rapid_questions", "content_value": "If honesty gets you in trouble, what do you do and why?.If kindness makes you look \u201cuncool,\u201d what do you do and why?.If fairness costs you something, what do you do and why?.If a friend pressures you to break rules, what do you do and why?.What value won\u2019t you compromise, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 262: Trust Break Recovery
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Trust Break Recovery', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair after harm', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you broke someone’s trust, what’s step one and why?.If someone broke your trust, what’s fair next and why?.If you shared a secret by accident, how do you repair and why?.What makes an apology meaningful, and why?.What makes trust rebuildable, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trust Break Recovery',
    '{"lesson_name": "Trust Break Recovery", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair after harm"}, {"content_key": "rapid_questions", "content_value": "If you broke someone\u2019s trust, what\u2019s step one and why?.If someone broke your trust, what\u2019s fair next and why?.If you shared a secret by accident, how do you repair and why?.What makes an apology meaningful, and why?.What makes trust rebuildable, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 263: Popularity vs Character
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Popularity vs Character', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social identity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s the difference between being liked and being respected, and why?.When do people perform for approval, and why?.What does authenticity cost sometimes, and why is it worth it?.What boundary protects your identity, and why?.What’s one choice you make for character, not popularity, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Popularity vs Character',
    '{"lesson_name": "Popularity vs Character", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social identity"}, {"content_key": "rapid_questions", "content_value": "What\u2019s the difference between being liked and being respected, and why?.When do people perform for approval, and why?.What does authenticity cost sometimes, and why is it worth it?.What boundary protects your identity, and why?.What\u2019s one choice you make for character, not popularity, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 264: Online Ethics Dilemma
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Online Ethics Dilemma', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Digital morality', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you see cyberbullying, what’s the right move and why?.If a friend posts something hateful, what do you do and why?.If someone shares a private photo, what should happen and why?.If drama spreads fast, what’s the responsible response and why?.What does digital integrity look like, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Online Ethics Dilemma',
    '{"lesson_name": "Online Ethics Dilemma", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Digital morality"}, {"content_key": "rapid_questions", "content_value": "If you see cyberbullying, what\u2019s the right move and why?.If a friend posts something hateful, what do you do and why?.If someone shares a private photo, what should happen and why?.If drama spreads fast, what\u2019s the responsible response and why?.What does digital integrity look like, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 265: Peer Pressure Micro-Choices
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Peer Pressure Micro-Choices', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Standing firm', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If friends want you to vape/try something risky, what do you do and why?.If friends want you to skip class, what do you do and why?.If friends want you to insult someone, what do you do and why?.If friends mock your goal, what do you do and why?.What phrase helps you say no, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Peer Pressure Micro-Choices',
    '{"lesson_name": "Peer Pressure Micro-Choices", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Standing firm"}, {"content_key": "rapid_questions", "content_value": "If friends want you to vape/try something risky, what do you do and why?.If friends want you to skip class, what do you do and why?.If friends want you to insult someone, what do you do and why?.If friends mock your goal, what do you do and why?.What phrase helps you say no, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 266: Fair Systems Thinking
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Systems Thinking', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Rules and systems', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What school rule causes stress, and what should change and why?.What would make group projects more fair, and why?.What would reduce hallway conflict, and why?.What tradeoff might your change create, and why?.Why do better systems reduce bullying, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Systems Thinking',
    '{"lesson_name": "Fair Systems Thinking", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Rules and systems"}, {"content_key": "rapid_questions", "content_value": "What school rule causes stress, and what should change and why?.What would make group projects more fair, and why?.What would reduce hallway conflict, and why?.What tradeoff might your change create, and why?.Why do better systems reduce bullying, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 267: Perspective in Conflict
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective in Conflict', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Two-sided reasoning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone react strongly to a small comment, and why?.Why might someone ghost instead of talking, and why?.Why might someone joke when anxious, and why?.In a multicultural group, why do misunderstandings happen, and why?.What’s one way to check your assumptions, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective in Conflict',
    '{"lesson_name": "Perspective in Conflict", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Two-sided reasoning"}, {"content_key": "rapid_questions", "content_value": "Why might someone react strongly to a small comment, and why?.Why might someone ghost instead of talking, and why?.Why might someone joke when anxious, and why?.In a multicultural group, why do misunderstandings happen, and why?.What\u2019s one way to check your assumptions, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 268: Resilience With Meaning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience With Meaning', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth through setbacks', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What setback shaped you, and why?.What belief helps you keep going, and why?.What habit helps you bounce back, and why?.What failure taught you the most, and why?.What does resilience mean to you now, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience With Meaning',
    '{"lesson_name": "Resilience With Meaning", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Growth through setbacks"}, {"content_key": "rapid_questions", "content_value": "What setback shaped you, and why?.What belief helps you keep going, and why?.What habit helps you bounce back, and why?.What failure taught you the most, and why?.What does resilience mean to you now, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 269: Leadership Without Power
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership Without Power', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Influence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you lead without controlling people, and why?.How do you include quiet voices, and why?.How do you stop drama without escalating it, and why?.How do you give feedback kindly, and why?.Why does trust beat popularity, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership Without Power',
    '{"lesson_name": "Leadership Without Power", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Influence"}, {"content_key": "rapid_questions", "content_value": "How do you lead without controlling people, and why?.How do you include quiet voices, and why?.How do you stop drama without escalating it, and why?.How do you give feedback kindly, and why?.Why does trust beat popularity, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 270: Identity Capstone Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity Capstone Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 9, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Who you’re becoming', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you want to be known for, and why?.What habit will support that identity, and why?.What fear do you want to outgrow, and why?.What boundary protects your future, and why?.What is your next step this month, and why?.⭐ GRADE 10 — MODULE 3: RAPID QUESTIONS & ANSWERS.✅ MODULE 3 — GRADE 10', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity Capstone Sprint',
    '{"lesson_name": "Identity Capstone Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 9, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Who you\u2019re becoming"}, {"content_key": "rapid_questions", "content_value": "What do you want to be known for, and why?.What habit will support that identity, and why?.What fear do you want to outgrow, and why?.What boundary protects your future, and why?.What is your next step this month, and why?.\u2b50 GRADE 10 \u2014 MODULE 3: RAPID QUESTIONS & ANSWERS.\u2705 MODULE 3 \u2014 GRADE 10"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 271: Mood + Momentum Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Mood + Momentum Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Daily state', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your mood in one word?.What’s one win from today?.What’s one challenge from today?.What helped your focus today?.What do you want to improve tomorrow?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mood + Momentum Flash',
    '{"lesson_name": "Mood + Momentum Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Daily state"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your mood in one word?.What\u2019s one win from today?.What\u2019s one challenge from today?.What helped your focus today?.What do you want to improve tomorrow?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 272: Workload Reality Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Workload Reality Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Time and workload', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What task is biggest this week?.What task is easiest this week?.What’s your best time to work?.What distracts you most?.What helps you start tasks?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Workload Reality Check',
    '{"lesson_name": "Workload Reality Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Time and workload"}, {"content_key": "rapid_questions", "content_value": "What task is biggest this week?.What task is easiest this week?.What\u2019s your best time to work?.What distracts you most?.What helps you start tasks?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 273: Friendship Health Scan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Friendship Health Scan', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friend wellbeing', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes a friendship healthy?.What makes a friendship draining?.What’s one boundary you keep with friends?.What’s one way you show loyalty?.What’s one way you repair conflict?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Friendship Health Scan',
    '{"lesson_name": "Friendship Health Scan", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friend wellbeing"}, {"content_key": "rapid_questions", "content_value": "What makes a friendship healthy?.What makes a friendship draining?.What\u2019s one boundary you keep with friends?.What\u2019s one way you show loyalty?.What\u2019s one way you repair conflict?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 274: Confidence Builder Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Confidence Builder Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Confidence habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you feel confident?.What makes you doubt yourself?.Who supports your confidence?.What’s one brave thing you did recently?.What’s one skill you’re improving?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Confidence Builder Round',
    '{"lesson_name": "Confidence Builder Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Confidence habits"}, {"content_key": "rapid_questions", "content_value": "What makes you feel confident?.What makes you doubt yourself?.Who supports your confidence?.What\u2019s one brave thing you did recently?.What\u2019s one skill you\u2019re improving?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 275: Digital Balance Burst
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Balance Burst', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Tech habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s one app you should use less?.What’s one app you use responsibly?.What’s one sign you need a break?.What’s one online rule you follow?.What’s one offline habit you like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Balance Burst',
    '{"lesson_name": "Digital Balance Burst", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Tech habits"}, {"content_key": "rapid_questions", "content_value": "What\u2019s one app you should use less?.What\u2019s one app you use responsibly?.What\u2019s one sign you need a break?.What\u2019s one online rule you follow?.What\u2019s one offline habit you like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 276: Study & Strategy Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Study & Strategy Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Learning habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What study method works best for you?.What subject takes the most effort?.What helps you remember content?.What helps you avoid procrastination?.What helps you recover after a low grade?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Study & Strategy Snap',
    '{"lesson_name": "Study & Strategy Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Learning habits"}, {"content_key": "rapid_questions", "content_value": "What study method works best for you?.What subject takes the most effort?.What helps you remember content?.What helps you avoid procrastination?.What helps you recover after a low grade?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 277: Respect in Differences
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Respect in Differences', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social awareness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does respect look like in a disagreement?.What does curiosity look like about cultures?.What’s a way to include someone new?.What’s a way to stop a rude joke?.What’s a way to support someone stressed?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Respect in Differences',
    '{"lesson_name": "Respect in Differences", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social awareness"}, {"content_key": "rapid_questions", "content_value": "What does respect look like in a disagreement?.What does curiosity look like about cultures?.What\u2019s a way to include someone new?.What\u2019s a way to stop a rude joke?.What\u2019s a way to support someone stressed?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 278: Team Project Quick Roles
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Team Project Quick Roles', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What role do you play in team projects?.What makes teamwork difficult?.What makes teamwork smooth?.What do you do if someone disappears?.What do you do if conflict starts?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Team Project Quick Roles',
    '{"lesson_name": "Team Project Quick Roles", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration"}, {"content_key": "rapid_questions", "content_value": "What role do you play in team projects?.What makes teamwork difficult?.What makes teamwork smooth?.What do you do if someone disappears?.What do you do if conflict starts?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 279: Community Impact Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community Impact Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Service & impact', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s one issue your community faces?.What’s one way teens can help?.What’s one cause you care about?.What’s one way to show respect in public spaces?.What’s one small action with big impact?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community Impact Pop',
    '{"lesson_name": "Community Impact Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Service & impact"}, {"content_key": "rapid_questions", "content_value": "What\u2019s one issue your community faces?.What\u2019s one way teens can help?.What\u2019s one cause you care about?.What\u2019s one way to show respect in public spaces?.What\u2019s one small action with big impact?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 280: Future Snapshot Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Snapshot Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Future thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s one goal for this year?.What’s one skill you want stronger?.What’s one habit you want to build?.What’s one thing you want to explore (career/interest)?.What’s one step you’ll take this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Snapshot Round',
    '{"lesson_name": "Future Snapshot Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Future thinking"}, {"content_key": "rapid_questions", "content_value": "What\u2019s one goal for this year?.What\u2019s one skill you want stronger?.What\u2019s one habit you want to build?.What\u2019s one thing you want to explore (career/interest)?.What\u2019s one step you\u2019ll take this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 281: Identity + Why
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity + Why', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Meaning behind choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value guides your decisions most, and why?.What environment helps you thrive, and why?.What kind of friend do you aim to be, and why?.What goal matters now, and why?.What boundary protects your identity, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity + Why',
    '{"lesson_name": "Identity + Why", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Meaning behind choices"}, {"content_key": "rapid_questions", "content_value": "What value guides your decisions most, and why?.What environment helps you thrive, and why?.What kind of friend do you aim to be, and why?.What goal matters now, and why?.What boundary protects your identity, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 282: Stress Cycle Breakers
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress Cycle Breakers', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping plans', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What triggers stress for you lately, and why?.What coping tool works best, and why?.What helps you recover after conflict, and why?.What helps you sleep better, and why?.What boundary reduces burnout, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress Cycle Breakers',
    '{"lesson_name": "Stress Cycle Breakers", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping plans"}, {"content_key": "rapid_questions", "content_value": "What triggers stress for you lately, and why?.What coping tool works best, and why?.What helps you recover after conflict, and why?.What helps you sleep better, and why?.What boundary reduces burnout, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 283: Communication With Boundaries
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Communication With Boundaries', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Healthy communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s a respectful way to say “no,” and why?.What’s a respectful way to ask for space, and why?.What’s a respectful way to disagree, and why?.What makes an apology effective, and why?.What makes feedback feel safe, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Communication With Boundaries',
    '{"lesson_name": "Communication With Boundaries", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Healthy communication"}, {"content_key": "rapid_questions", "content_value": "What\u2019s a respectful way to say \u201cno,\u201d and why?.What\u2019s a respectful way to ask for space, and why?.What\u2019s a respectful way to disagree, and why?.What makes an apology effective, and why?.What makes feedback feel safe, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 284: Digital Drama Navigation
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Drama Navigation', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online conflict', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s a smart move when drama hits your feed, and why?.What should you do if someone shares private screenshots, and why?.What’s a respectful way to respond to rumors, and why?.What’s the best way to support a target of bullying, and why?.What does digital integrity mean, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Drama Navigation',
    '{"lesson_name": "Digital Drama Navigation", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online conflict"}, {"content_key": "rapid_questions", "content_value": "What\u2019s a smart move when drama hits your feed, and why?.What should you do if someone shares private screenshots, and why?.What\u2019s a respectful way to respond to rumors, and why?.What\u2019s the best way to support a target of bullying, and why?.What does digital integrity mean, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 285: Tradeoffs & Priorities
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Tradeoffs & Priorities', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Balancing commitments', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you can’t do everything, how do you choose and why?.What do you sacrifice first—sleep, fun, or grades—and why?.What’s one boundary you set for your schedule, and why?.What helps you avoid procrastination, and why?.What does healthy balance look like for you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tradeoffs & Priorities',
    '{"lesson_name": "Tradeoffs & Priorities", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Balancing commitments"}, {"content_key": "rapid_questions", "content_value": "If you can\u2019t do everything, how do you choose and why?.What do you sacrifice first\u2014sleep, fun, or grades\u2014and why?.What\u2019s one boundary you set for your schedule, and why?.What helps you avoid procrastination, and why?.What does healthy balance look like for you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 286: Perspective in Misunderstandings
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective in Misunderstandings', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reading situations', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do misunderstandings happen over text, and why?.Why might someone go silent instead of talking, and why?.Why might someone act defensive when corrected, and why?.At a multicultural event (powwow, Eid, Lunar New Year), why is respectful curiosity important?.What question helps you check assumptions, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective in Misunderstandings',
    '{"lesson_name": "Perspective in Misunderstandings", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Reading situations"}, {"content_key": "rapid_questions", "content_value": "Why do misunderstandings happen over text, and why?.Why might someone go silent instead of talking, and why?.Why might someone act defensive when corrected, and why?.At a multicultural event (powwow, Eid, Lunar New Year), why is respectful curiosity important?.What question helps you check assumptions, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 287: Teamwork With Accountability
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Teamwork With Accountability', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do if a teammate disappears, and why?.What do you do if someone dominates, and why?.What do you do if your idea is ignored, and why?.What does fair workload look like, and why?.What makes a leader credible, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Teamwork With Accountability',
    '{"lesson_name": "Teamwork With Accountability", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration"}, {"content_key": "rapid_questions", "content_value": "What do you do if a teammate disappears, and why?.What do you do if someone dominates, and why?.What do you do if your idea is ignored, and why?.What does fair workload look like, and why?.What makes a leader credible, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 288: Fairness & Ethics Mini-Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fairness & Ethics Mini-Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Right vs fair', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s fair when someone breaks rules for a “good reason,” and why?.What’s fair when two people deserve the same opportunity, and why?.What’s fair when trust is broken, and why?.What’s fair when harm was “unintentional,” and why?.Why does fairness protect communities, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fairness & Ethics Mini-Round',
    '{"lesson_name": "Fairness & Ethics Mini-Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Right vs fair"}, {"content_key": "rapid_questions", "content_value": "What\u2019s fair when someone breaks rules for a \u201cgood reason,\u201d and why?.What\u2019s fair when two people deserve the same opportunity, and why?.What\u2019s fair when trust is broken, and why?.What\u2019s fair when harm was \u201cunintentional,\u201d and why?.Why does fairness protect communities, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 289: Resilience Reframe
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience Reframe', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth through setbacks', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What setback taught you something real, and why?.What helps you recover faster, and why?.What belief keeps you going, and why?.What habit supports resilience, and why?.What does “growth” mean to you now, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience Reframe',
    '{"lesson_name": "Resilience Reframe", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Growth through setbacks"}, {"content_key": "rapid_questions", "content_value": "What setback taught you something real, and why?.What helps you recover faster, and why?.What belief keeps you going, and why?.What habit supports resilience, and why?.What does \u201cgrowth\u201d mean to you now, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 290: Future Path Mapping
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Path Mapping', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Purpose + planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What direction are you exploring (career/college), and why?.What skill will matter most, and why?.What obstacle might appear, and why?.What support do you need, and why?.What’s your next step this month, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Path Mapping',
    '{"lesson_name": "Future Path Mapping", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Purpose + planning"}, {"content_key": "rapid_questions", "content_value": "What direction are you exploring (career/college), and why?.What skill will matter most, and why?.What obstacle might appear, and why?.What support do you need, and why?.What\u2019s your next step this month, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 291: Integrity vs Comfort
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Integrity vs Comfort', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Doing right when it’s hard', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When is honesty hardest, and why choose it anyway?.When is kindness hardest, and why choose it anyway?.When is fairness hardest, and why protect it anyway?.When is courage hardest, and why act anyway?.What principle won’t you trade for approval, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Integrity vs Comfort',
    '{"lesson_name": "Integrity vs Comfort", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Doing right when it\u2019s hard"}, {"content_key": "rapid_questions", "content_value": "When is honesty hardest, and why choose it anyway?.When is kindness hardest, and why choose it anyway?.When is fairness hardest, and why protect it anyway?.When is courage hardest, and why act anyway?.What principle won\u2019t you trade for approval, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 292: Trust Rebuild Logic
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Trust Rebuild Logic', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Accountability', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you broke trust, what is step one and why?.What proves change over time, and why?.When is forgiveness reasonable, and why?.When is distance healthy, and why?.What makes trust fragile, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Trust Rebuild Logic',
    '{"lesson_name": "Trust Rebuild Logic", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Accountability"}, {"content_key": "rapid_questions", "content_value": "If you broke trust, what is step one and why?.What proves change over time, and why?.When is forgiveness reasonable, and why?.When is distance healthy, and why?.What makes trust fragile, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 293: Digital Ethics Case
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Ethics Case', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online harm', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you see hate speech online, what’s the right response and why?.If someone shares private images, what should happen and why?.If a friend “exposes” someone, what do you do and why?.If you posted in anger, how do you repair and why?.What does digital integrity demand, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Ethics Case',
    '{"lesson_name": "Digital Ethics Case", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online harm"}, {"content_key": "rapid_questions", "content_value": "If you see hate speech online, what\u2019s the right response and why?.If someone shares private images, what should happen and why?.If a friend \u201cexposes\u201d someone, what do you do and why?.If you posted in anger, how do you repair and why?.What does digital integrity demand, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 294: Power & Popularity
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Power & Popularity', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social dynamics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s the difference between influence and manipulation, and why?.Why do people chase popularity, and why is it risky?.When does “fitting in” become self-betrayal, and why?.What boundary protects your identity, and why?.What does real confidence look like, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Power & Popularity',
    '{"lesson_name": "Power & Popularity", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social dynamics"}, {"content_key": "rapid_questions", "content_value": "What\u2019s the difference between influence and manipulation, and why?.Why do people chase popularity, and why is it risky?.When does \u201cfitting in\u201d become self-betrayal, and why?.What boundary protects your identity, and why?.What does real confidence look like, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 295: Ethical Tradeoffs Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ethical Tradeoffs Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Competing goods', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If telling the truth hurts someone, what’s the respectful truth and why?.If protecting a friend conflicts with fairness, what do you do and why?.If rules are unjust, what’s a wise response and why?.If you benefit from unfairness, what should you do and why?.What’s the difference between intention and impact, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ethical Tradeoffs Round',
    '{"lesson_name": "Ethical Tradeoffs Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Competing goods"}, {"content_key": "rapid_questions", "content_value": "If telling the truth hurts someone, what\u2019s the respectful truth and why?.If protecting a friend conflicts with fairness, what do you do and why?.If rules are unjust, what\u2019s a wise response and why?.If you benefit from unfairness, what should you do and why?.What\u2019s the difference between intention and impact, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 296: Systems Improvement Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Systems Improvement Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Fixing environments', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What school system creates stress, and what would you change and why?.What would make group grading more fair, and why?.What would reduce conflict in hallways, and why?.What tradeoff could your change create, and why?.Why do better systems reduce harm, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Systems Improvement Sprint',
    '{"lesson_name": "Systems Improvement Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Fixing environments"}, {"content_key": "rapid_questions", "content_value": "What school system creates stress, and what would you change and why?.What would make group grading more fair, and why?.What would reduce conflict in hallways, and why?.What tradeoff could your change create, and why?.Why do better systems reduce harm, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 297: Perspective in Conflict
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective in Conflict', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Two-sided thinking', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why might someone get defensive when corrected, and why?.Why might someone ghost rather than talk, and why?.Why might someone joke when anxious, and why?.In culturally mixed groups, why do misunderstandings happen, and why?.What’s one method to verify assumptions, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective in Conflict',
    '{"lesson_name": "Perspective in Conflict", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Two-sided thinking"}, {"content_key": "rapid_questions", "content_value": "Why might someone get defensive when corrected, and why?.Why might someone ghost rather than talk, and why?.Why might someone joke when anxious, and why?.In culturally mixed groups, why do misunderstandings happen, and why?.What\u2019s one method to verify assumptions, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 298: Resilience With Purpose
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience With Purpose', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Meaning-making', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What setback shaped your priorities, and why?.What belief keeps you stable, and why?.What habit makes you mentally stronger, and why?.What failure taught you most, and why?.What does resilience mean beyond “toughness,” and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience With Purpose',
    '{"lesson_name": "Resilience With Purpose", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Meaning-making"}, {"content_key": "rapid_questions", "content_value": "What setback shaped your priorities, and why?.What belief keeps you stable, and why?.What habit makes you mentally stronger, and why?.What failure taught you most, and why?.What does resilience mean beyond \u201ctoughness,\u201d and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 299: Leadership Without Authority
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership Without Authority', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Quiet leadership', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you lead without controlling, and why?.How do you protect someone targeted, and why?.How do you include quiet voices, and why?.How do you de-escalate drama, and why?.Why does trust beat popularity, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership Without Authority',
    '{"lesson_name": "Leadership Without Authority", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Quiet leadership"}, {"content_key": "rapid_questions", "content_value": "How do you lead without controlling, and why?.How do you protect someone targeted, and why?.How do you include quiet voices, and why?.How do you de-escalate drama, and why?.Why does trust beat popularity, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 300: Identity & Future Capstone
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity & Future Capstone', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 10, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Who you choose to be', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you want to be known for, and why?.What habit will prove that identity, and why?.What fear must you outgrow, and why?.What boundary protects your future, and why?.What is your next concrete step, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity & Future Capstone',
    '{"lesson_name": "Identity & Future Capstone", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 10, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Who you choose to be"}, {"content_key": "rapid_questions", "content_value": "What do you want to be known for, and why?.What habit will prove that identity, and why?.What fear must you outgrow, and why?.What boundary protects your future, and why?.What is your next concrete step, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 301: Energy Audit Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Energy Audit Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Energy & stress', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your energy level today?.What drained you most?.What helped you most?.What’s one thing you can control today?.What’s one thing you can let go of today?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Energy Audit Flash',
    '{"lesson_name": "Energy Audit Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Energy & stress"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your energy level today?.What drained you most?.What helped you most?.What\u2019s one thing you can control today?.What\u2019s one thing you can let go of today?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 302: Schedule Reality Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Schedule Reality Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Time management', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your biggest commitment this week?.What’s your biggest distraction this week?.What time do you work best?.What helps you start difficult tasks?.What helps you stay consistent?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Schedule Reality Round',
    '{"lesson_name": "Schedule Reality Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Time management"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your biggest commitment this week?.What\u2019s your biggest distraction this week?.What time do you work best?.What helps you start difficult tasks?.What helps you stay consistent?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 303: Relationship Health Pulse
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Relationship Health Pulse', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friend/peer relationships', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you feel respected by someone?.What breaks trust quickly?.What boundary do you keep for your peace?.What does a healthy apology sound like?.What does healthy conflict look like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Relationship Health Pulse',
    '{"lesson_name": "Relationship Health Pulse", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friend/peer relationships"}, {"content_key": "rapid_questions", "content_value": "What makes you feel respected by someone?.What breaks trust quickly?.What boundary do you keep for your peace?.What does a healthy apology sound like?.What does healthy conflict look like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 304: Confidence & Doubt Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Confidence & Doubt Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Self-belief', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What are you confident in right now?.What do you doubt right now?.Who supports your growth?.What’s one brave thing you’re doing?.What’s one skill you’re building?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Confidence & Doubt Check',
    '{"lesson_name": "Confidence & Doubt Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Self-belief"}, {"content_key": "rapid_questions", "content_value": "What are you confident in right now?.What do you doubt right now?.Who supports your growth?.What\u2019s one brave thing you\u2019re doing?.What\u2019s one skill you\u2019re building?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 305: Digital Life Snapshot
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Life Snapshot', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online habits', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What app takes the most time from you?.What online habit helps you?.What online habit hurts you?.What’s one online rule you follow?.What’s one offline habit you want more of?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Life Snapshot',
    '{"lesson_name": "Digital Life Snapshot", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online habits"}, {"content_key": "rapid_questions", "content_value": "What app takes the most time from you?.What online habit helps you?.What online habit hurts you?.What\u2019s one online rule you follow?.What\u2019s one offline habit you want more of?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 306: Study & Pressure Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Study & Pressure Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Academic pressure', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What subject takes the most mental energy?.What study method works best for you?.What helps you manage deadlines?.What helps you recover after disappointment?.What helps you keep perspective?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Study & Pressure Round',
    '{"lesson_name": "Study & Pressure Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Academic pressure"}, {"content_key": "rapid_questions", "content_value": "What subject takes the most mental energy?.What study method works best for you?.What helps you manage deadlines?.What helps you recover after disappointment?.What helps you keep perspective?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 307: Respect Across Differences
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Respect Across Differences', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Inclusion', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does respect look like in disagreement?.What does respectful curiosity look like?.What’s one way to stop a harmful comment?.What’s one way to support someone stressed?.What’s one way to build belonging?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Respect Across Differences',
    '{"lesson_name": "Respect Across Differences", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Inclusion"}, {"content_key": "rapid_questions", "content_value": "What does respect look like in disagreement?.What does respectful curiosity look like?.What\u2019s one way to stop a harmful comment?.What\u2019s one way to support someone stressed?.What\u2019s one way to build belonging?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 308: Team Project Quickscan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Team Project Quickscan', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Collaboration', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What role do you take in teams?.What ruins teamwork fastest?.What improves teamwork fastest?.What do you do if someone doesn’t deliver?.What do you do if conflict rises?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Team Project Quickscan',
    '{"lesson_name": "Team Project Quickscan", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Collaboration"}, {"content_key": "rapid_questions", "content_value": "What role do you take in teams?.What ruins teamwork fastest?.What improves teamwork fastest?.What do you do if someone doesn\u2019t deliver?.What do you do if conflict rises?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 309: Community Lens Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community Lens Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Local issues', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s one issue your school/community faces?.What’s one cause you care about?.What’s one action students can take?.What does “responsibility” mean to you?.What does “impact” mean to you?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community Lens Round',
    '{"lesson_name": "Community Lens Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Local issues"}, {"content_key": "rapid_questions", "content_value": "What\u2019s one issue your school/community faces?.What\u2019s one cause you care about?.What\u2019s one action students can take?.What does \u201cresponsibility\u201d mean to you?.What does \u201cimpact\u201d mean to you?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 310: Future Next-Step Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Next-Step Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Post-high school planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What path are you considering (college/trade/work), and why?.What skill matters most for that path?.What fear do you have about the future?.What support do you need?.What’s one step you’ll take this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Next-Step Flash',
    '{"lesson_name": "Future Next-Step Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Post-high school planning"}, {"content_key": "rapid_questions", "content_value": "What path are you considering (college/trade/work), and why?.What skill matters most for that path?.What fear do you have about the future?.What support do you need?.What\u2019s one step you\u2019ll take this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 311: Values That Guide You
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Values That Guide You', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Identity & values', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value guides your choices most, and why?.What value do you struggle to live by, and why?.What value do you want people to trust you for, and why?.What boundary protects your identity, and why?.What habit proves your values, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Values That Guide You',
    '{"lesson_name": "Values That Guide You", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Identity & values"}, {"content_key": "rapid_questions", "content_value": "What value guides your choices most, and why?.What value do you struggle to live by, and why?.What value do you want people to trust you for, and why?.What boundary protects your identity, and why?.What habit proves your values, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 312: Burnout Prevention Map
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Burnout Prevention Map', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Stress & balance', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your biggest burnout signal, and why?.What coping tool works best, and why?.What boundary protects your time, and why?.What’s one healthy way you recover, and why?.What’s one change you’ll make this week, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Burnout Prevention Map',
    '{"lesson_name": "Burnout Prevention Map", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Stress & balance"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your biggest burnout signal, and why?.What coping tool works best, and why?.What boundary protects your time, and why?.What\u2019s one healthy way you recover, and why?.What\u2019s one change you\u2019ll make this week, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 313: Boundary Conversations
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Boundary Conversations', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you say “no” without guilt, and why?.How do you ask for space respectfully, and why?.How do you set limits with friends, and why?.How do you respond to pressure, and why?.How do you repair after you snap, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Boundary Conversations',
    '{"lesson_name": "Boundary Conversations", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Communication"}, {"content_key": "rapid_questions", "content_value": "How do you say \u201cno\u201d without guilt, and why?.How do you ask for space respectfully, and why?.How do you set limits with friends, and why?.How do you respond to pressure, and why?.How do you repair after you snap, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 314: Digital Integrity Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Integrity Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online ethics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does digital integrity mean, and why?.What’s the right move when you see cyberbullying, and why?.What’s the right move when rumors spread, and why?.What’s the right move when private info is shared, and why?.What’s a boundary that protects your mental health online, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Integrity Round',
    '{"lesson_name": "Digital Integrity Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online ethics"}, {"content_key": "rapid_questions", "content_value": "What does digital integrity mean, and why?.What\u2019s the right move when you see cyberbullying, and why?.What\u2019s the right move when rumors spread, and why?.What\u2019s the right move when private info is shared, and why?.What\u2019s a boundary that protects your mental health online, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 315: Competing Priorities Tradeoffs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Competing Priorities Tradeoffs', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Decision-making', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you can’t do everything, how do you choose and why?.What do you prioritize: sleep, grades, or social life—and why?.What’s one boundary you set for your schedule, and why?.What’s one habit that reduces procrastination, and why?.What does balance look like for you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Competing Priorities Tradeoffs',
    '{"lesson_name": "Competing Priorities Tradeoffs", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Decision-making"}, {"content_key": "rapid_questions", "content_value": "If you can\u2019t do everything, how do you choose and why?.What do you prioritize: sleep, grades, or social life\u2014and why?.What\u2019s one boundary you set for your schedule, and why?.What\u2019s one habit that reduces procrastination, and why?.What does balance look like for you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 316: Perspective & Misread Signals
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective & Misread Signals', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Understanding others', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do people misread tone in texts, and why?.Why might someone withdraw under stress, and why?.Why might someone get defensive when corrected, and why?.In culturally diverse settings, why do misunderstandings happen, and why?.What question helps you clarify instead of assuming, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective & Misread Signals',
    '{"lesson_name": "Perspective & Misread Signals", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Understanding others"}, {"content_key": "rapid_questions", "content_value": "Why do people misread tone in texts, and why?.Why might someone withdraw under stress, and why?.Why might someone get defensive when corrected, and why?.In culturally diverse settings, why do misunderstandings happen, and why?.What question helps you clarify instead of assuming, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 317: Leadership & Accountability
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership & Accountability', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Group influence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does accountable leadership look like, and why?.What do you do when a teammate fails a commitment, and why?.What do you do when conflict escalates, and why?.What does fair workload distribution look like, and why?.What earns trust over time, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership & Accountability',
    '{"lesson_name": "Leadership & Accountability", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Group influence"}, {"content_key": "rapid_questions", "content_value": "What does accountable leadership look like, and why?.What do you do when a teammate fails a commitment, and why?.What do you do when conflict escalates, and why?.What does fair workload distribution look like, and why?.What earns trust over time, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 318: Ethics & Intention vs Impact
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Ethics & Intention vs Impact', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Moral reasoning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s the difference between intention and impact, and why?.When does a “joke” become harm, and why?.What’s a respectful way to own harm, and why?.When is apology not enough, and why?.What does repair require beyond words, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Ethics & Intention vs Impact',
    '{"lesson_name": "Ethics & Intention vs Impact", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Moral reasoning"}, {"content_key": "rapid_questions", "content_value": "What\u2019s the difference between intention and impact, and why?.When does a \u201cjoke\u201d become harm, and why?.What\u2019s a respectful way to own harm, and why?.When is apology not enough, and why?.What does repair require beyond words, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 319: Resilience & Identity Growth
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience & Identity Growth', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Self-development', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What setback reshaped you, and why?.What belief keeps you steady, and why?.What habit helps you bounce back, and why?.What fear are you actively reducing, and why?.What does growth mean to you now, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience & Identity Growth',
    '{"lesson_name": "Resilience & Identity Growth", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Self-development"}, {"content_key": "rapid_questions", "content_value": "What setback reshaped you, and why?.What belief keeps you steady, and why?.What habit helps you bounce back, and why?.What fear are you actively reducing, and why?.What does growth mean to you now, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 320: Future Plan With Risk
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Plan With Risk', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Planning with uncertainty', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your next-step plan, and why?.What risk worries you most, and why?.What backup plan will you build, and why?.Who is in your support network, and why?.What is your next action this month, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Plan With Risk',
    '{"lesson_name": "Future Plan With Risk", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Planning with uncertainty"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your next-step plan, and why?.What risk worries you most, and why?.What backup plan will you build, and why?.Who is in your support network, and why?.What is your next action this month, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 321: Integrity vs Loyalty
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Integrity vs Loyalty', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Ethical dilemmas', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If a friend asks you to lie, what do you do and why?.If honesty hurts someone, what do you do and why?.If kindness costs your status, what do you do and why?.If fairness costs you opportunity, what do you do and why?.What principle do you refuse to trade, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Integrity vs Loyalty',
    '{"lesson_name": "Integrity vs Loyalty", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Ethical dilemmas"}, {"content_key": "rapid_questions", "content_value": "If a friend asks you to lie, what do you do and why?.If honesty hurts someone, what do you do and why?.If kindness costs your status, what do you do and why?.If fairness costs you opportunity, what do you do and why?.What principle do you refuse to trade, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 322: Repair After Serious Harm
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Repair After Serious Harm', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Accountability and trust', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s step one after you cause real harm, and why?.What proves accountability over time, and why?.When is forgiveness appropriate, and why?.When is distance healthier than closeness, and why?.What makes trust rebuildable, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Repair After Serious Harm',
    '{"lesson_name": "Repair After Serious Harm", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Accountability and trust"}, {"content_key": "rapid_questions", "content_value": "What\u2019s step one after you cause real harm, and why?.What proves accountability over time, and why?.When is forgiveness appropriate, and why?.When is distance healthier than closeness, and why?.What makes trust rebuildable, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 323: Digital Ethics Pressure Test
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Ethics Pressure Test', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online morality', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you’re asked to share a private screenshot, what do you do and why?.If you witness harassment online, what do you do and why?.If someone posts misinformation, what do you do and why?.If you accidentally spread a rumor, how do you repair and why?.What does digital integrity demand when it’s inconvenient, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Ethics Pressure Test',
    '{"lesson_name": "Digital Ethics Pressure Test", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online morality"}, {"content_key": "rapid_questions", "content_value": "If you\u2019re asked to share a private screenshot, what do you do and why?.If you witness harassment online, what do you do and why?.If someone posts misinformation, what do you do and why?.If you accidentally spread a rumor, how do you repair and why?.What does digital integrity demand when it\u2019s inconvenient, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 324: Power, Popularity, and Manipulation
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Power, Popularity, and Manipulation', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social dynamics', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s the difference between influence and manipulation, and why?.Why do people perform for approval, and why is it risky?.When does fitting in become self-betrayal, and why?.What boundary protects your identity, and why?.What does authentic confidence look like, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Power, Popularity, and Manipulation',
    '{"lesson_name": "Power, Popularity, and Manipulation", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social dynamics"}, {"content_key": "rapid_questions", "content_value": "What\u2019s the difference between influence and manipulation, and why?.Why do people perform for approval, and why is it risky?.When does fitting in become self-betrayal, and why?.What boundary protects your identity, and why?.What does authentic confidence look like, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 325: Systems & Fairness Lens
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Systems & Fairness Lens', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Institutional fairness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What system at school feels unfair, and what should change and why?.What would make grading more equitable, and why?.What would reduce bias in group work, and why?.What tradeoff might your fix create, and why?.Why do better systems reduce conflict, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Systems & Fairness Lens',
    '{"lesson_name": "Systems & Fairness Lens", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Institutional fairness"}, {"content_key": "rapid_questions", "content_value": "What system at school feels unfair, and what should change and why?.What would make grading more equitable, and why?.What would reduce bias in group work, and why?.What tradeoff might your fix create, and why?.Why do better systems reduce conflict, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 326: Perspective in High Emotion
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective in High Emotion', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotional intelligence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do people lash out when afraid, and why?.Why do people shut down when overwhelmed, and why?.Why do people get defensive when corrected, and why?.How can cultural differences change how emotion is shown, and why?.What’s a de-escalation move you trust, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective in High Emotion',
    '{"lesson_name": "Perspective in High Emotion", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotional intelligence"}, {"content_key": "rapid_questions", "content_value": "Why do people lash out when afraid, and why?.Why do people shut down when overwhelmed, and why?.Why do people get defensive when corrected, and why?.How can cultural differences change how emotion is shown, and why?.What\u2019s a de-escalation move you trust, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 327: Tradeoffs in Real Priorities
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Tradeoffs in Real Priorities', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Life decisions', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you sacrifice first to protect your health, and why?.If goals conflict with relationships, what do you choose and why?.If family needs conflict with school demands, what do you do and why?.If you’re burned out, what boundary do you set and why?.What does a “good life balance” mean to you, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tradeoffs in Real Priorities',
    '{"lesson_name": "Tradeoffs in Real Priorities", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Life decisions"}, {"content_key": "rapid_questions", "content_value": "What do you sacrifice first to protect your health, and why?.If goals conflict with relationships, what do you choose and why?.If family needs conflict with school demands, what do you do and why?.If you\u2019re burned out, what boundary do you set and why?.What does a \u201cgood life balance\u201d mean to you, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 328: Leadership With Ethics
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership With Ethics', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Leading the right way', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you lead when it’s unpopular, and why?.How do you protect someone targeted without escalating, and why?.How do you include quiet voices, and why?.How do you admit mistakes as a leader, and why?.Why does trust matter more than charisma, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership With Ethics',
    '{"lesson_name": "Leadership With Ethics", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Leading the right way"}, {"content_key": "rapid_questions", "content_value": "How do you lead when it\u2019s unpopular, and why?.How do you protect someone targeted without escalating, and why?.How do you include quiet voices, and why?.How do you admit mistakes as a leader, and why?.Why does trust matter more than charisma, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 329: Resilience With Purpose
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience With Purpose', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Meaning-making', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What hardship shaped your values, and why?.What belief anchors you, and why?.What habit keeps you steady, and why?.What failure taught you most, and why?.What does resilience mean beyond “not quitting,” and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience With Purpose',
    '{"lesson_name": "Resilience With Purpose", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Meaning-making"}, {"content_key": "rapid_questions", "content_value": "What hardship shaped your values, and why?.What belief anchors you, and why?.What habit keeps you steady, and why?.What failure taught you most, and why?.What does resilience mean beyond \u201cnot quitting,\u201d and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 330: Identity Capstone—Future Self
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity Capstone—Future Self', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 11, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Who you choose to become', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you want to be known for, and why?.What habit will prove it, and why?.What fear must you outgrow, and why?.What boundary protects your future, and why?.What is your next concrete action, and why?.✅ MODULE 3 — GRADE 12', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity Capstone—Future Self',
    '{"lesson_name": "Identity Capstone\u2014Future Self", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 11, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Who you choose to become"}, {"content_key": "rapid_questions", "content_value": "What do you want to be known for, and why?.What habit will prove it, and why?.What fear must you outgrow, and why?.What boundary protects your future, and why?.What is your next concrete action, and why?.\u2705 MODULE 3 \u2014 GRADE 12"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 331: Senior-Year Pulse
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Senior-Year Pulse', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Current mindset', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your main feeling today?.What’s one thing you’re proud of lately?.What’s one thing stressing you lately?.What’s one thing you’re excited about?.What’s one thing you want to improve this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Senior-Year Pulse',
    '{"lesson_name": "Senior-Year Pulse", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Current mindset"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your main feeling today?.What\u2019s one thing you\u2019re proud of lately?.What\u2019s one thing stressing you lately?.What\u2019s one thing you\u2019re excited about?.What\u2019s one thing you want to improve this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 332: Time & Priorities Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Time & Priorities Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Prioritizing', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your top priority this week?.What’s your biggest distraction?.What time do you work best?.What helps you start hard tasks?.What helps you finish what you start?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Time & Priorities Snap',
    '{"lesson_name": "Time & Priorities Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Prioritizing"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your top priority this week?.What\u2019s your biggest distraction?.What time do you work best?.What helps you start hard tasks?.What helps you finish what you start?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 333: Relationship Readiness Check
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Relationship Readiness Check', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Healthy relationships', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you trust someone?.What breaks trust quickly?.What boundary protects your peace?.What does respectful conflict look like?.What does a real apology sound like?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Relationship Readiness Check',
    '{"lesson_name": "Relationship Readiness Check", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Healthy relationships"}, {"content_key": "rapid_questions", "content_value": "What makes you trust someone?.What breaks trust quickly?.What boundary protects your peace?.What does respectful conflict look like?.What does a real apology sound like?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 334: Confidence in Transition
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Confidence in Transition', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Change and confidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What change are you preparing for?.What part excites you?.What part scares you?.What support helps most?.What strength will help you succeed?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Confidence in Transition',
    '{"lesson_name": "Confidence in Transition", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Change and confidence"}, {"content_key": "rapid_questions", "content_value": "What change are you preparing for?.What part excites you?.What part scares you?.What support helps most?.What strength will help you succeed?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 335: Digital Reputation Snap
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Reputation Snap', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Online choices', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s one online rule you follow?.What’s one thing you won’t post?.What’s one sign you need a break?.What’s one positive thing you use tech for?.What’s one boundary you keep online?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Reputation Snap',
    '{"lesson_name": "Digital Reputation Snap", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Online choices"}, {"content_key": "rapid_questions", "content_value": "What\u2019s one online rule you follow?.What\u2019s one thing you won\u2019t post?.What\u2019s one sign you need a break?.What\u2019s one positive thing you use tech for?.What\u2019s one boundary you keep online?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 336: Pressure & Calm Tools
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pressure & Calm Tools', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Coping skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What triggers stress for you lately?.What calms you down quickly?.What helps you reset after a bad day?.Who do you talk to for support?.What’s one healthy way you rest?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pressure & Calm Tools',
    '{"lesson_name": "Pressure & Calm Tools", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Coping skills"}, {"content_key": "rapid_questions", "content_value": "What triggers stress for you lately?.What calms you down quickly?.What helps you reset after a bad day?.Who do you talk to for support?.What\u2019s one healthy way you rest?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 337: Work & Life Skills Quickscan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Work & Life Skills Quickscan', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Practical readiness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What life skill are you strongest in?.What life skill do you need more practice with?.What helps you stay organized?.What helps you manage deadlines?.What helps you handle feedback?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Work & Life Skills Quickscan',
    '{"lesson_name": "Work & Life Skills Quickscan", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Practical readiness"}, {"content_key": "rapid_questions", "content_value": "What life skill are you strongest in?.What life skill do you need more practice with?.What helps you stay organized?.What helps you manage deadlines?.What helps you handle feedback?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 338: Community & Values Pop
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Community & Values Pop', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What issue do you care about most?.What does “impact” mean to you?.What’s one way you help your community?.What’s one way you show respect across differences?.What’s one value you want to live by?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Community & Values Pop',
    '{"lesson_name": "Community & Values Pop", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social responsibility"}, {"content_key": "rapid_questions", "content_value": "What issue do you care about most?.What does \u201cimpact\u201d mean to you?.What\u2019s one way you help your community?.What\u2019s one way you show respect across differences?.What\u2019s one value you want to live by?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 339: Goal Next-Step Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Goal Next-Step Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Future steps', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your next big goal?.What’s your first step?.What could block you?.What support will you use?.How will you measure progress?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Goal Next-Step Round',
    '{"lesson_name": "Goal Next-Step Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Future steps"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your next big goal?.What\u2019s your first step?.What could block you?.What support will you use?.How will you measure progress?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 340: Legacy Reflection Flash
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Legacy Reflection Flash', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Looking back', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What lesson did high school teach you?.Who helped you grow most?.What moment are you proud of?.What mistake taught you most?.What do you want to be remembered for?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Legacy Reflection Flash',
    '{"lesson_name": "Legacy Reflection Flash", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Looking back"}, {"content_key": "rapid_questions", "content_value": "What lesson did high school teach you?.Who helped you grow most?.What moment are you proud of?.What mistake taught you most?.What do you want to be remembered for?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 341: Values With Evidence
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Values With Evidence', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Values and reasons', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What value guides your life most, and why?.What value do you struggle with, and why?.What boundary protects that value, and why?.What habit proves your values, and why?.What choice recently showed your values, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Values With Evidence',
    '{"lesson_name": "Values With Evidence", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Values and reasons"}, {"content_key": "rapid_questions", "content_value": "What value guides your life most, and why?.What value do you struggle with, and why?.What boundary protects that value, and why?.What habit proves your values, and why?.What choice recently showed your values, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 342: Stress + Sustainability Plan
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Stress + Sustainability Plan', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Avoiding burnout', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your biggest burnout signal, and why?.What coping tool works best, and why?.What boundary protects your time, and why?.What recovery habit helps you most, and why?.What change will make your week healthier, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Stress + Sustainability Plan',
    '{"lesson_name": "Stress + Sustainability Plan", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Avoiding burnout"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your biggest burnout signal, and why?.What coping tool works best, and why?.What boundary protects your time, and why?.What recovery habit helps you most, and why?.What change will make your week healthier, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 343: Boundary Scripts for Real Life
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Boundary Scripts for Real Life', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Communication', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you say “no” without disrespect, and why?.How do you ask for space, and why?.How do you respond to pressure, and why?.How do you set limits with friends, and why?.How do you repair after conflict, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Boundary Scripts for Real Life',
    '{"lesson_name": "Boundary Scripts for Real Life", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Communication"}, {"content_key": "rapid_questions", "content_value": "How do you say \u201cno\u201d without disrespect, and why?.How do you ask for space, and why?.How do you respond to pressure, and why?.How do you set limits with friends, and why?.How do you repair after conflict, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 344: Digital Footprint Ethics
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Footprint Ethics', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reputation & integrity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does digital integrity mean, and why?.What’s your rule for posting when emotional, and why?.What should you do if private info is shared, and why?.What’s a responsible response to misinformation, and why?.What boundary protects your mental health online, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Footprint Ethics',
    '{"lesson_name": "Digital Footprint Ethics", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Reputation & integrity"}, {"content_key": "rapid_questions", "content_value": "What does digital integrity mean, and why?.What\u2019s your rule for posting when emotional, and why?.What should you do if private info is shared, and why?.What\u2019s a responsible response to misinformation, and why?.What boundary protects your mental health online, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 345: Competing Goods Tradeoffs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Competing Goods Tradeoffs', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Decision-making', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If honesty hurts someone, what’s the respectful truth and why?.If loyalty conflicts with fairness, what do you choose and why?.If rules seem wrong, what’s a wise response and why?.If you benefit from unfairness, what do you do and why?.What’s intention vs impact, and why does it matter?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Competing Goods Tradeoffs',
    '{"lesson_name": "Competing Goods Tradeoffs", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Decision-making"}, {"content_key": "rapid_questions", "content_value": "If honesty hurts someone, what\u2019s the respectful truth and why?.If loyalty conflicts with fairness, what do you choose and why?.If rules seem wrong, what\u2019s a wise response and why?.If you benefit from unfairness, what do you do and why?.What\u2019s intention vs impact, and why does it matter?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 346: Perspective in Transition
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Perspective in Transition', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Change and empathy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'Why do people fear change even when it’s good, and why?.Why do people act distant when stressed, and why?.Why do misunderstandings increase during transition, and why?.In diverse communities, why is respectful curiosity important, and why?.What question helps you clarify instead of assume, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Perspective in Transition',
    '{"lesson_name": "Perspective in Transition", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Change and empathy"}, {"content_key": "rapid_questions", "content_value": "Why do people fear change even when it\u2019s good, and why?.Why do people act distant when stressed, and why?.Why do misunderstandings increase during transition, and why?.In diverse communities, why is respectful curiosity important, and why?.What question helps you clarify instead of assume, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 347: Leadership With Accountability
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership With Accountability', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Credibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes leadership credible, and why?.How do you lead without controlling, and why?.How do you admit mistakes as a leader, and why?.How do you include quiet voices, and why?.How do you de-escalate conflict, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership With Accountability',
    '{"lesson_name": "Leadership With Accountability", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Credibility"}, {"content_key": "rapid_questions", "content_value": "What makes leadership credible, and why?.How do you lead without controlling, and why?.How do you admit mistakes as a leader, and why?.How do you include quiet voices, and why?.How do you de-escalate conflict, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 348: Fair Systems Lens
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Fair Systems Lens', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Equity and systems', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What system at school felt unfair, and why?.What change would create more equity, and why?.What tradeoff might that change create, and why?.How do systems shape behavior, and why?.What’s one fair rule you’d carry into adulthood, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Fair Systems Lens',
    '{"lesson_name": "Fair Systems Lens", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Equity and systems"}, {"content_key": "rapid_questions", "content_value": "What system at school felt unfair, and why?.What change would create more equity, and why?.What tradeoff might that change create, and why?.How do systems shape behavior, and why?.What\u2019s one fair rule you\u2019d carry into adulthood, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 349: Resilience With Meaning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience With Meaning', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Growth story', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What hardship shaped your priorities, and why?.What belief anchors you, and why?.What habit keeps you steady, and why?.What failure taught you most, and why?.What does resilience mean beyond toughness, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience With Meaning',
    '{"lesson_name": "Resilience With Meaning", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Growth story"}, {"content_key": "rapid_questions", "content_value": "What hardship shaped your priorities, and why?.What belief anchors you, and why?.What habit keeps you steady, and why?.What failure taught you most, and why?.What does resilience mean beyond toughness, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 350: Future Blueprint Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Future Blueprint Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'MEDIUM',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Next chapter planning', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What future path fits you, and why?.What skill matters most for that path, and why?.What risk worries you, and why?.What backup plan will you build, and why?.What’s your next action this month, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Future Blueprint Round',
    '{"lesson_name": "Future Blueprint Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "MEDIUM", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Next chapter planning"}, {"content_key": "rapid_questions", "content_value": "What future path fits you, and why?.What skill matters most for that path, and why?.What risk worries you, and why?.What backup plan will you build, and why?.What\u2019s your next action this month, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 351: Integrity in Gray Areas
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Integrity in Gray Areas', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Moral complexity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When does “doing right” get complicated, and why?.If honesty harms someone, what does ethical honesty look like and why?.If loyalty conflicts with justice, what do you choose and why?.If silence protects you but harms others, what do you do and why?.What principle will guide you in adulthood, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Integrity in Gray Areas',
    '{"lesson_name": "Integrity in Gray Areas", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Moral complexity"}, {"content_key": "rapid_questions", "content_value": "When does \u201cdoing right\u201d get complicated, and why?.If honesty harms someone, what does ethical honesty look like and why?.If loyalty conflicts with justice, what do you choose and why?.If silence protects you but harms others, what do you do and why?.What principle will guide you in adulthood, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 352: Accountability Beyond Apology
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Accountability Beyond Apology', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Repair at depth', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What does accountability require beyond words, and why?.What proves change over time, and why?.When is forgiveness reasonable, and why?.When is distance the healthiest boundary, and why?.What makes trust rebuildable, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Accountability Beyond Apology',
    '{"lesson_name": "Accountability Beyond Apology", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Repair at depth"}, {"content_key": "rapid_questions", "content_value": "What does accountability require beyond words, and why?.What proves change over time, and why?.When is forgiveness reasonable, and why?.When is distance the healthiest boundary, and why?.What makes trust rebuildable, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 353: Digital Ethics—Adult Standard
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Digital Ethics—Adult Standard', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Digital citizenship', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'If you see harassment online, what’s the right response and why?.If misinformation spreads, what’s responsible action and why?.If private images are shared, what should happen and why?.If you posted harm, how do you repair and why?.What does digital integrity demand when no one is watching, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Digital Ethics—Adult Standard',
    '{"lesson_name": "Digital Ethics\u2014Adult Standard", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Digital citizenship"}, {"content_key": "rapid_questions", "content_value": "If you see harassment online, what\u2019s the right response and why?.If misinformation spreads, what\u2019s responsible action and why?.If private images are shared, what should happen and why?.If you posted harm, how do you repair and why?.What does digital integrity demand when no one is watching, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 354: Power, Privilege, and Fairness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Power, Privilege, and Fairness', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Social systems', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How can power shape what people call “normal,” and why?.How can privilege hide unfairness, and why?.What’s a fair response when you benefit from unfairness, and why?.How do you stay humble while confident, and why?.What does justice require beyond kindness, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Power, Privilege, and Fairness',
    '{"lesson_name": "Power, Privilege, and Fairness", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Social systems"}, {"content_key": "rapid_questions", "content_value": "How can power shape what people call \u201cnormal,\u201d and why?.How can privilege hide unfairness, and why?.What\u2019s a fair response when you benefit from unfairness, and why?.How do you stay humble while confident, and why?.What does justice require beyond kindness, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 355: Identity vs Expectation
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Identity vs Expectation', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Authenticity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When do expectations push you away from yourself, and why?.What boundary protects your authenticity, and why?.What does courage look like in self-definition, and why?.What’s the cost of performing for approval, and why?.What do you want your identity to stand for, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Identity vs Expectation',
    '{"lesson_name": "Identity vs Expectation", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Authenticity"}, {"content_key": "rapid_questions", "content_value": "When do expectations push you away from yourself, and why?.What boundary protects your authenticity, and why?.What does courage look like in self-definition, and why?.What\u2019s the cost of performing for approval, and why?.What do you want your identity to stand for, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 356: Systems Designer Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Systems Designer Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Designing better environments', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What system causes unnecessary stress, and what would you redesign and why?.What would make evaluation/grades more fair, and why?.What would make communities more inclusive, and why?.What tradeoff might your redesign cause, and why?.Why do better systems reduce harm, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Systems Designer Sprint',
    '{"lesson_name": "Systems Designer Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Designing better environments"}, {"content_key": "rapid_questions", "content_value": "What system causes unnecessary stress, and what would you redesign and why?.What would make evaluation/grades more fair, and why?.What would make communities more inclusive, and why?.What tradeoff might your redesign cause, and why?.Why do better systems reduce harm, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 357: De-escalation Mastery
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'De-escalation Mastery', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Handling conflict', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What’s your best de-escalation move, and why?.What’s the difference between defending yourself and attacking, and why?.How do you hold boundaries without disrespect, and why?.How do you repair when emotions run high, and why?.What does mature conflict look like, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'De-escalation Mastery',
    '{"lesson_name": "De-escalation Mastery", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Handling conflict"}, {"content_key": "rapid_questions", "content_value": "What\u2019s your best de-escalation move, and why?.What\u2019s the difference between defending yourself and attacking, and why?.How do you hold boundaries without disrespect, and why?.How do you repair when emotions run high, and why?.What does mature conflict look like, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 358: Resilience With Purpose
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Resilience With Purpose', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Meaning-making', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What hardship shaped your values, and why?.What belief keeps you grounded, and why?.What habit keeps you steady, and why?.What failure taught you the most, and why?.What does resilience mean beyond survival, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Resilience With Purpose',
    '{"lesson_name": "Resilience With Purpose", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Meaning-making"}, {"content_key": "rapid_questions", "content_value": "What hardship shaped your values, and why?.What belief keeps you grounded, and why?.What habit keeps you steady, and why?.What failure taught you the most, and why?.What does resilience mean beyond survival, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 359: Leadership With Ethics
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Leadership With Ethics', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Leading responsibly', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'How do you lead without controlling, and why?.How do you protect someone targeted, and why?.How do you include unheard voices, and why?.How do you admit mistakes publicly, and why?.Why is trust stronger than charisma, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Leadership With Ethics',
    '{"lesson_name": "Leadership With Ethics", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Leading responsibly"}, {"content_key": "rapid_questions", "content_value": "How do you lead without controlling, and why?.How do you protect someone targeted, and why?.How do you include unheard voices, and why?.How do you admit mistakes publicly, and why?.Why is trust stronger than charisma, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 360: Adult-Life Capstone Round
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Adult-Life Capstone Round', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'HARD',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 12, NULL, NULL
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Life philosophy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What kind of adult do you want to become, and why?.What value will guide your hardest decisions, and why?.What boundary will protect your health, and why?.What habit will build your future, and why?.What is your next concrete step, and why?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Adult-Life Capstone Round',
    '{"lesson_name": "Adult-Life Capstone Round", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 12, "section": null, "difficulty_level": "HARD", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Life philosophy"}, {"content_key": "rapid_questions", "content_value": "What kind of adult do you want to become, and why?.What value will guide your hardest decisions, and why?.What boundary will protect your health, and why?.What habit will build your future, and why?.What is your next concrete step, and why?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;
