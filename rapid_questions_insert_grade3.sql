-- =====================================================
-- RAPID QUESTIONS (Quick Thinking) — 20 lessons
-- Grade 3, Difficulty: EASY
-- Run this entire script in a single pgAdmin query window
-- =====================================================

-- Lesson 1: Morning Moves Sprint
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
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/46.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Morning routine & readiness - SEL Focus: Self-management', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do first after waking up?.What helps you get ready faster in the morning?.What do you eat or drink before school?.What do you put in your backpack each morning?.What helps you feel calm before the school day starts?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Morning Moves Sprint',
    '{"lesson_name": "Morning Moves Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Morning routine & readiness - SEL Focus: Self-management"}, {"content_key": "rapid_questions", "content_value": "What do you do first after waking up?.What helps you get ready faster in the morning?.What do you eat or drink before school?.What do you put in your backpack each morning?.What helps you feel calm before the school day starts?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: School Day Basics
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'School Day Basics', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/10.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Classroom routines & belongings - SEL Focus: Responsibility', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is the first thing you do when you arrive at school?.Where do you put your backpack when you get to class?.What subject do you start with each morning?.What do you do if you forget a pencil?.What is one rule in your classroom?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'School Day Basics',
    '{"lesson_name": "School Day Basics", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Classroom routines & belongings - SEL Focus: Responsibility"}, {"content_key": "rapid_questions", "content_value": "What is the first thing you do when you arrive at school?.Where do you put your backpack when you get to class?.What subject do you start with each morning?.What do you do if you forget a pencil?.What is one rule in your classroom?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Recess Favorites
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Recess Favorites', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/23.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Play & physical activity - SEL Focus: Joy, self-expression', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite thing to do at recess?.Who do you usually play with outside?.What game do you wish your school had at recess?.What do you do if it rains and recess is inside?.How do you feel after running around at recess?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recess Favorites',
    '{"lesson_name": "Recess Favorites", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Play & physical activity - SEL Focus: Joy, self-expression"}, {"content_key": "rapid_questions", "content_value": "What is your favorite thing to do at recess?.Who do you usually play with outside?.What game do you wish your school had at recess?.What do you do if it rains and recess is inside?.How do you feel after running around at recess?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: My Favorite Foods
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'My Favorite Foods', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/97.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Food preferences & choices - SEL Focus: Self-awareness, choice', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite thing to eat for lunch?.What food do you never want to eat again?.What snack gives you the most energy?.What food do you like to eat on special days?.What is one food you have never tried but want to?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Favorite Foods',
    '{"lesson_name": "My Favorite Foods", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Food preferences & choices - SEL Focus: Self-awareness, choice"}, {"content_key": "rapid_questions", "content_value": "What is your favorite thing to eat for lunch?.What food do you never want to eat again?.What snack gives you the most energy?.What food do you like to eat on special days?.What is one food you have never tried but want to?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: Book Talk Sprint
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Book Talk Sprint', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/17.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Reading preferences & meaning - SEL Focus: Engagement, curiosity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite book or story?.What kind of books do you like most — funny, scary, or adventurous?.Who is a character you really liked in a story?.Do you like reading alone or being read to?.What story do you wish you could be inside?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Book Talk Sprint',
    '{"lesson_name": "Book Talk Sprint", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Reading preferences & meaning - SEL Focus: Engagement, curiosity"}, {"content_key": "rapid_questions", "content_value": "What is your favorite book or story?.What kind of books do you like most \u2014 funny, scary, or adventurous?.Who is a character you really liked in a story?.Do you like reading alone or being read to?.What story do you wish you could be inside?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: Colors, Sounds, and Senses
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Colors, Sounds, and Senses', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/61.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Sensory preferences - SEL Focus: Self-expression', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is your favorite color and where do you see it most?.What sound makes you feel calm?.What smell do you love?.What texture feels good to touch?.What sound makes it hard to focus?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Colors, Sounds, and Senses',
    '{"lesson_name": "Colors, Sounds, and Senses", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Sensory preferences - SEL Focus: Self-expression"}, {"content_key": "rapid_questions", "content_value": "What is your favorite color and where do you see it most?.What sound makes you feel calm?.What smell do you love?.What texture feels good to touch?.What sound makes it hard to focus?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: Helping at Home
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Helping at Home', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Home responsibilities - SEL Focus: Responsibility, family', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one chore you do at home?.How do you feel when you finish a chore?.Who do you usually help most at home?.What task do you like doing at home?.What happens if you forget to do your chore?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Helping at Home',
    '{"lesson_name": "Helping at Home", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Home responsibilities - SEL Focus: Responsibility, family"}, {"content_key": "rapid_questions", "content_value": "What is one chore you do at home?.How do you feel when you finish a chore?.Who do you usually help most at home?.What task do you like doing at home?.What happens if you forget to do your chore?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Feelings Check-In
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Feelings Check-In', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/43.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Emotional vocabulary - SEL Focus: Emotional awareness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What word best describes how you feel today?.What makes you feel happy at school?.What makes you feel nervous?.What do you do when you feel frustrated?.What helps you feel better after a bad day?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Feelings Check-In',
    '{"lesson_name": "Feelings Check-In", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Emotional vocabulary - SEL Focus: Emotional awareness"}, {"content_key": "rapid_questions", "content_value": "What word best describes how you feel today?.What makes you feel happy at school?.What makes you feel nervous?.What do you do when you feel frustrated?.What helps you feel better after a bad day?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: Things I'm Good At
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Things I''m Good At', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Strengths & self-knowledge - SEL Focus: Self-awareness, confidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you are really good at?.What did you have to practice to get better at?.What school subject feels easiest for you?.What do you do better now than you did last year?.What skill do you want to improve?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Things I''m Good At',
    '{"lesson_name": "Things I''m Good At", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Strengths & self-knowledge - SEL Focus: Self-awareness, confidence"}, {"content_key": "rapid_questions", "content_value": "What is something you are really good at?.What did you have to practice to get better at?.What school subject feels easiest for you?.What do you do better now than you did last year?.What skill do you want to improve?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: Mini Goals Launch
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
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/48.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Personal goals & persistence - SEL Focus: Growth mindset', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one thing you want to get better at this month?.What will you do to practice it?.Who can help you reach your goal?.How will you feel when you reach it?.What will you try after you reach your first goal?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mini Goals Launch',
    '{"lesson_name": "Mini Goals Launch", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Personal goals & persistence - SEL Focus: Growth mindset"}, {"content_key": "rapid_questions", "content_value": "What is one thing you want to get better at this month?.What will you do to practice it?.Who can help you reach your goal?.How will you feel when you reach it?.What will you try after you reach your first goal?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: Being a Good Friend
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Being a Good Friend', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/34.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Friendship & social skills - SEL Focus: Relationship skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one thing a good friend does?.What do you do when a friend is sad?.What makes it hard to be a good friend sometimes?.What do you do if you accidentally hurt a friend''s feelings?.What is something nice you did for a friend this week?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Being a Good Friend',
    '{"lesson_name": "Being a Good Friend", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Friendship & social skills - SEL Focus: Relationship skills"}, {"content_key": "rapid_questions", "content_value": "What is one thing a good friend does?.What do you do when a friend is sad?.What makes it hard to be a good friend sometimes?.What do you do if you accidentally hurt a friend''s feelings?.What is something nice you did for a friend this week?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: Classroom Community
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Classroom Community', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/51.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Class rules & community care - SEL Focus: Social awareness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one rule in your class that you think is important?.What does your class do to take care of each other?.What does your teacher do to make the classroom feel safe?.What can students do to make the classroom a better place?.What would happen if there were no classroom rules?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Classroom Community',
    '{"lesson_name": "Classroom Community", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Class rules & community care - SEL Focus: Social awareness"}, {"content_key": "rapid_questions", "content_value": "What is one rule in your class that you think is important?.What does your class do to take care of each other?.What does your teacher do to make the classroom feel safe?.What can students do to make the classroom a better place?.What would happen if there were no classroom rules?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: Asking for Help
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Asking for Help', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Knowing when to ask for support - SEL Focus: Self-advocacy', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'When is it important to ask for help?.Who do you usually ask for help at school?.What makes it hard to ask for help sometimes?.What happens when you get the help you need?.What is one thing you are comfortable asking for?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Asking for Help',
    '{"lesson_name": "Asking for Help", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Knowing when to ask for support - SEL Focus: Self-advocacy"}, {"content_key": "rapid_questions", "content_value": "When is it important to ask for help?.Who do you usually ask for help at school?.What makes it hard to ask for help sometimes?.What happens when you get the help you need?.What is one thing you are comfortable asking for?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: Staying Focused
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Staying Focused', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/53.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Attention & concentration - SEL Focus: Self-management', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What helps you stay focused during class?.What distracts you most at school?.What do you do when you notice you are daydreaming?.Where do you focus best — at your desk, on the floor, or somewhere else?.What is one trick that helps you pay attention?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Staying Focused',
    '{"lesson_name": "Staying Focused", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Attention & concentration - SEL Focus: Self-management"}, {"content_key": "rapid_questions", "content_value": "What helps you stay focused during class?.What distracts you most at school?.What do you do when you notice you are daydreaming?.Where do you focus best \u2014 at your desk, on the floor, or somewhere else?.What is one trick that helps you pay attention?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: My Neighborhood
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'My Neighborhood', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/83.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Community & place - SEL Focus: Community connection', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is something you like about your neighborhood?.What do people in your neighborhood do to help each other?.What is a place near your home you enjoy going to?.What do you wish was different about your neighborhood?.How does your neighborhood feel different from your school?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'My Neighborhood',
    '{"lesson_name": "My Neighborhood", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Community & place - SEL Focus: Community connection"}, {"content_key": "rapid_questions", "content_value": "What is something you like about your neighborhood?.What do people in your neighborhood do to help each other?.What is a place near your home you enjoy going to?.What do you wish was different about your neighborhood?.How does your neighborhood feel different from your school?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: Thinking About Others
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Thinking About Others', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Empathy & perspective-taking - SEL Focus: Social awareness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What might someone feel when they start at a new school?.What might a classmate feel if no one sits with them at lunch?.What would you feel if you forgot your homework?.How do you think a teacher feels when the class is loud?.What can you do to make someone''s day a little easier?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Thinking About Others',
    '{"lesson_name": "Thinking About Others", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Empathy & perspective-taking - SEL Focus: Social awareness"}, {"content_key": "rapid_questions", "content_value": "What might someone feel when they start at a new school?.What might a classmate feel if no one sits with them at lunch?.What would you feel if you forgot your homework?.How do you think a teacher feels when the class is loud?.What can you do to make someone''s day a little easier?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: Dealing With Disagreements
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Dealing With Disagreements', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Conflict and resolution - SEL Focus: Relationship skills', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What do you do when you disagree with a classmate?.What is one thing that makes an argument worse?.What is one thing that helps an argument end faster?.Have you ever apologized first? How did it feel?.What is a fair way to solve a disagreement about a game?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Dealing With Disagreements',
    '{"lesson_name": "Dealing With Disagreements", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Conflict and resolution - SEL Focus: Relationship skills"}, {"content_key": "rapid_questions", "content_value": "What do you do when you disagree with a classmate?.What is one thing that makes an argument worse?.What is one thing that helps an argument end faster?.Have you ever apologized first? How did it feel?.What is a fair way to solve a disagreement about a game?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: What Makes Me Feel Safe
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'What Makes Me Feel Safe', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/86.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Safety and comfort - SEL Focus: Emotional security', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What makes you feel safe at school?.Who is someone you trust at school?.What do you do if something feels wrong or unsafe?.What makes a classroom feel welcoming?.What do you do when you feel scared or unsure?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'What Makes Me Feel Safe',
    '{"lesson_name": "What Makes Me Feel Safe", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Safety and comfort - SEL Focus: Emotional security"}, {"content_key": "rapid_questions", "content_value": "What makes you feel safe at school?.Who is someone you trust at school?.What do you do if something feels wrong or unsafe?.What makes a classroom feel welcoming?.What do you do when you feel scared or unsure?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: Learning From Mistakes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Learning From Mistakes', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Mistakes as growth - SEL Focus: Growth mindset', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is a mistake you made that taught you something?.How did you feel right after you made the mistake?.What did you do differently the next time?.Do you think mistakes are always bad? Why or why not?.What is one thing you know now because of a mistake?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Learning From Mistakes',
    '{"lesson_name": "Learning From Mistakes", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Mistakes as growth - SEL Focus: Growth mindset"}, {"content_key": "rapid_questions", "content_value": "What is a mistake you made that taught you something?.How did you feel right after you made the mistake?.What did you do differently the next time?.Do you think mistakes are always bad? Why or why not?.What is one thing you know now because of a mistake?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: Who I Am
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Who I Am', 'Rapid Question and Answers',
    'be2bcdc0-3737-41a5-af5c-df6b61ed94c2', 'EASY',
    'Quick Thinking', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/65.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'theme', 'Identity & self-expression - SEL Focus: Self-awareness, confidence', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'rapid_questions', 'What is one word you would use to describe yourself?.What is something you are proud of about yourself?.What is something special about your family or culture?.What is something you believe in strongly?.What do you want people to know about who you are?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Hey, whats your favorite fruit? Hey, whats your favorite hobby?.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'My favorite fruit is MANGO . My favorite hobby is DRAWING.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Who I Am',
    '{"lesson_name": "Who I Am", "lesson_description": "Rapid Question and Answers", "training_module_id": "be2bcdc0-3737-41a5-af5c-df6b61ed94c2", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Quick Thinking", "contents": [{"content_key": "theme", "content_value": "Identity & self-expression - SEL Focus: Self-awareness, confidence"}, {"content_key": "rapid_questions", "content_value": "What is one word you would use to describe yourself?.What is something you are proud of about yourself?.What is something special about your family or culture?.What is something you believe in strongly?.What do you want people to know about who you are?"}, {"content_key": "example_heading", "content_value": "Hey, whats your favorite fruit? Hey, whats your favorite hobby?."}, {"content_key": "example_content", "content_value": "My favorite fruit is MANGO . My favorite hobby is DRAWING."}]}',
    'published', true, NOW()
  );
END $$;
