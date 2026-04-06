-- Module 7: Silly Topic Debate - Grade 3
-- 20 Lessons generated in simple query format (matching Poem, Reading, and Tongue Twister style)
-- Includes lesson_version_new inserts as requested.
-- Training Module: Silly Topic Debate (8addaf36-3881-49d8-ab34-444c399bf432)

-- Lesson 1: Elevators vs. Stairs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Elevators vs. Stairs', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Elevators are better than stairs', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Stairs', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Elevators', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Elevators help people get up fast without getting tired.
That''s a good point! Why might stairs be better sometimes?
Tell me your last reason.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Elevators vs. Stairs',
    '{"lesson_name": "Elevators vs. Stairs", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Elevators are better than stairs"}, {"content_key": "user_side", "content_value": "Stairs"}, {"content_key": "ai_side", "content_value": "Elevators"}, {"content_key": "content", "content_value": "Elevators help people get up fast without getting tired.\nThat''s a good point! Why might stairs be better sometimes?\nTell me your last reason."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: Cats vs. Dogs
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Cats vs. Dogs', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Cats make better pets than dogs', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Dogs', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Cats', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Cats are quiet and take care of themselves.
Interesting! Why do some people prefer dogs?
Give your final reason.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Cats vs. Dogs',
    '{"lesson_name": "Cats vs. Dogs", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Cats make better pets than dogs"}, {"content_key": "user_side", "content_value": "Dogs"}, {"content_key": "ai_side", "content_value": "Cats"}, {"content_key": "content", "content_value": "Cats are quiet and take care of themselves.\nInteresting! Why do some people prefer dogs?\nGive your final reason."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Pizza vs. Tacos
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pizza vs. Tacos', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Pizza is better than tacos', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Tacos', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Pizza has cheese and sauce that many people love.
Good point! Why are tacos special though?
What is your final argument?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pizza vs. Tacos',
    '{"lesson_name": "Pizza vs. Tacos", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Pizza is better than tacos"}, {"content_key": "user_side", "content_value": "Tacos"}, {"content_key": "ai_side", "content_value": "Pizza"}, {"content_key": "content", "content_value": "Pizza has cheese and sauce that many people love.\nGood point! Why are tacos special though?\nWhat is your final argument?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: Books vs. Movies
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Books vs. Movies', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/92.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Books are better than movies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Movies', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Books', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Books let you use your imagination to picture everything.
That''s interesting! Why do people enjoy movies more sometimes?
What is your final reason?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Books vs. Movies',
    '{"lesson_name": "Books vs. Movies", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Books are better than movies"}, {"content_key": "user_side", "content_value": "Movies"}, {"content_key": "ai_side", "content_value": "Books"}, {"content_key": "content", "content_value": "Books let you use your imagination to picture everything.\nThat''s interesting! Why do people enjoy movies more sometimes?\nWhat is your final reason?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: Summer vs. Winter
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Summer vs. Winter', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/64.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Summer is better than winter', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Winter', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Summer', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Summer means no school and warm weather for playing outside.
Nice reasoning! What is one good thing about winter?
Give your last point.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Summer vs. Winter',
    '{"lesson_name": "Summer vs. Winter", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Summer is better than winter"}, {"content_key": "user_side", "content_value": "Winter"}, {"content_key": "ai_side", "content_value": "Summer"}, {"content_key": "content", "content_value": "Summer means no school and warm weather for playing outside.\nNice reasoning! What is one good thing about winter?\nGive your last point."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: Breakfast vs. Dinner
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Breakfast vs. Dinner', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/75.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Breakfast is the best meal of the day', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Dinner', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Breakfast', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Breakfast gives your brain energy to start the day strong.
Good thinking! Why might dinner be someone''s favorite meal?
What is your final argument?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Breakfast vs. Dinner',
    '{"lesson_name": "Breakfast vs. Dinner", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Breakfast is the best meal of the day"}, {"content_key": "user_side", "content_value": "Dinner"}, {"content_key": "ai_side", "content_value": "Breakfast"}, {"content_key": "content", "content_value": "Breakfast gives your brain energy to start the day strong.\nGood thinking! Why might dinner be someone''s favorite meal?\nWhat is your final argument?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: Pencils vs. Pens
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Pencils vs. Pens', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Pencils are better than pens for school', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Pens', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Pencils', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Pencils let you erase mistakes, which is very helpful.
That makes sense! Why might someone prefer pens?
Your last reason?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Pencils vs. Pens',
    '{"lesson_name": "Pencils vs. Pens", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Pencils are better than pens for school"}, {"content_key": "user_side", "content_value": "Pens"}, {"content_key": "ai_side", "content_value": "Pencils"}, {"content_key": "content", "content_value": "Pencils let you erase mistakes, which is very helpful.\nThat makes sense! Why might someone prefer pens?\nYour last reason?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Swimming vs. Running
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Swimming vs. Running', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Swimming is better exercise than running', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Running', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Swimming', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Swimming works your whole body and is easy on your knees.
Interesting! Why do people choose running instead?
Final thought?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Swimming vs. Running',
    '{"lesson_name": "Swimming vs. Running", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Swimming is better exercise than running"}, {"content_key": "user_side", "content_value": "Running"}, {"content_key": "ai_side", "content_value": "Swimming"}, {"content_key": "content", "content_value": "Swimming works your whole body and is easy on your knees.\nInteresting! Why do people choose running instead?\nFinal thought?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: Mountains vs. Beach
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Mountains vs. Beach', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Going to the mountains is better than going to the beach', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Beach', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Mountains', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'Mountains are cool, quiet, and great for hiking.
Good argument! Why do people love the beach?
Give your final reason.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Mountains vs. Beach',
    '{"lesson_name": "Mountains vs. Beach", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Going to the mountains is better than going to the beach"}, {"content_key": "user_side", "content_value": "Beach"}, {"content_key": "ai_side", "content_value": "Mountains"}, {"content_key": "content", "content_value": "Mountains are cool, quiet, and great for hiking.\nGood argument! Why do people love the beach?\nGive your final reason."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: Recess vs. Gym Class
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Recess vs. Gym Class', 'Silly Topic Debate',
    '8addaf36-3881-49d8-ab34-444c399bf432', 'EASY',
    'Silly Topic Debate', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic', 'Recess is better than gym class', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'user_side', 'Gym Class', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'ai_side', 'Recess', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'content', 'At recess you can choose what you want to do and play freely.
That''s a strong point! Why is gym class important too?
Your final argument?', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_topic', 'Ice Cream is better than Pizza', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_user_side', 'Ice cream is cold and sweet, and it makes people happy on hot days!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_ai_side', 'Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Recess vs. Gym Class',
    '{"lesson_name": "Recess vs. Gym Class", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Recess is better than gym class"}, {"content_key": "user_side", "content_value": "Gym Class"}, {"content_key": "ai_side", "content_value": "Recess"}, {"content_key": "content", "content_value": "At recess you can choose what you want to do and play freely.\nThat''s a strong point! Why is gym class important too?\nYour final argument?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: Working Alone vs. Working in Groups
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Working Alone vs. Working in Groups'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Working alone is better than working in a group'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''Groups'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Alone'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Working alone means you can focus without distractions.
Good reasoning! What do groups give you that solo work cannot?
Give your final point.'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Working Alone vs. Working in Groups'',
    ''{"lesson_name": "Working Alone vs. Working in Groups", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Working alone is better than working in a group"}, {"content_key": "user_side", "content_value": "Groups"}, {"content_key": "ai_side", "content_value": "Alone"}, {"content_key": "content", "content_value": "Working alone means you can focus without distractions.\nGood reasoning! What do groups give you that solo work cannot?\nGive your final point."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 12: Reading Silently vs. Reading Aloud
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Reading Silently vs. Reading Aloud'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Reading aloud is better than reading silently'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''Silently'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Aloud'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Reading aloud helps you hear the words and understand them better.
Interesting! Why might silent reading work better for some people?
Last argument?'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Reading Silently vs. Reading Aloud'',
    ''{"lesson_name": "Reading Silently vs. Reading Aloud", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Reading aloud is better than reading silently"}, {"content_key": "user_side", "content_value": "Silently"}, {"content_key": "ai_side", "content_value": "Aloud"}, {"content_key": "content", "content_value": "Reading aloud helps you hear the words and understand them better.\nInteresting! Why might silent reading work better for some people?\nLast argument?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 13: Homework vs. No Homework
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Homework vs. No Homework'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/81.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Having homework helps students learn more'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''No Homework'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Homework'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Homework gives you extra practice on what you learned in class.
That''''s fair. Why do some students think homework is not helpful?
Final reason?'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Homework vs. No Homework'',
    ''{"lesson_name": "Homework vs. No Homework", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Having homework helps students learn more"}, {"content_key": "user_side", "content_value": "No Homework"}, {"content_key": "ai_side", "content_value": "Homework"}, {"content_key": "content", "content_value": "Homework gives you extra practice on what you learned in class.\nThat''s fair. Why do some students think homework is not helpful?\nFinal reason?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 14: Art Class vs. Music Class
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Art Class vs. Music Class'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Art class is better than music class'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''Music'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Art'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Art lets you create something visual and keep it forever.
Good point! What does music class give you that art cannot?
Your last argument?'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Art Class vs. Music Class'',
    ''{"lesson_name": "Art Class vs. Music Class", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Art class is better than music class"}, {"content_key": "user_side", "content_value": "Music"}, {"content_key": "ai_side", "content_value": "Art"}, {"content_key": "content", "content_value": "Art lets you create something visual and keep it forever.\nGood point! What does music class give you that art cannot?\nYour last argument?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 15: Printed Books vs. E-books
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Printed Books vs. E-books'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/16.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Printed books are better than reading on a screen'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''E-books'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Printed'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Printed books feel real and do not need charging or Wi-Fi.
Interesting! Why might e-books be helpful for some readers?
Give your final argument.'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Printed Books vs. E-books'',
    ''{"lesson_name": "Printed Books vs. E-books", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Printed books are better than reading on a screen"}, {"content_key": "user_side", "content_value": "E-books"}, {"content_key": "ai_side", "content_value": "Printed"}, {"content_key": "content", "content_value": "Printed books feel real and do not need charging or Wi-Fi.\nInteresting! Why might e-books be helpful for some readers?\nGive your final argument."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 16: Being Early vs. Being On Time
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Being Early vs. Being On Time'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/85.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Arriving early is better than just being on time'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''On Time'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Early'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Arriving early means you are prepared and not rushed or stressed.
Good reasoning! Is there any downside to always arriving very early?
Give your final point and wrap up your argument.'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Being Early vs. Being On Time'',
    ''{"lesson_name": "Being Early vs. Being On Time", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Arriving early is better than just being on time"}, {"content_key": "user_side", "content_value": "On Time"}, {"content_key": "ai_side", "content_value": "Early"}, {"content_key": "content", "content_value": "Arriving early means you are prepared and not rushed or stressed.\nGood reasoning! Is there any downside to always arriving very early?\nGive your final point and wrap up your argument."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 17: Saying Sorry vs. Fixing the Problem
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Saying Sorry vs. Fixing the Problem'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/54.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Fixing the problem is more important than saying sorry'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''Sorry'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Fixing'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Actions show you mean it more than words alone can.
Thoughtful! Why is saying sorry still important, even if you fix things?
Conclude your argument.'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Saying Sorry vs. Fixing the Problem'',
    ''{"lesson_name": "Saying Sorry vs. Fixing the Problem", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Fixing the problem is more important than saying sorry"}, {"content_key": "user_side", "content_value": "Sorry"}, {"content_key": "ai_side", "content_value": "Fixing"}, {"content_key": "content", "content_value": "Actions show you mean it more than words alone can.\nThoughtful! Why is saying sorry still important, even if you fix things?\nConclude your argument."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 18: Celebrating Small Wins vs. Waiting for Big Ones
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Celebrating Small Wins vs. Waiting for Big Ones'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/93.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''You should celebrate small wins, not just big achievements'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''Big Ones'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Small Wins'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Small wins remind you that you are making progress every day.
Good thinking! Why might some people only celebrate big moments?
Final argument � go for it!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Celebrating Small Wins vs. Waiting for Big Ones'',
    ''{"lesson_name": "Celebrating Small Wins vs. Waiting for Big Ones", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "You should celebrate small wins, not just big achievements"}, {"content_key": "user_side", "content_value": "Big Ones"}, {"content_key": "ai_side", "content_value": "Small Wins"}, {"content_key": "content", "content_value": "Small wins remind you that you are making progress every day.\nGood thinking! Why might some people only celebrate big moments?\nFinal argument � go for it!"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 19: Asking for Help vs. Figuring It Out Alone
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Asking for Help vs. Figuring It Out Alone'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/67.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Figuring things out alone makes you stronger than asking for help'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''Help'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Alone'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Trying on your own first builds problem-solving and independence.
Strong argument! Why is asking for help also a sign of strength?
Wrap up � what is your final stance?'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Asking for Help vs. Figuring It Out Alone'',
    ''{"lesson_name": "Asking for Help vs. Figuring It Out Alone", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Figuring things out alone makes you stronger than asking for help"}, {"content_key": "user_side", "content_value": "Help"}, {"content_key": "ai_side", "content_value": "Alone"}, {"content_key": "content", "content_value": "Trying on your own first builds problem-solving and independence.\nStrong argument! Why is asking for help also a sign of strength?\nWrap up � what is your final stance?"}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;

-- Lesson 20: Following Rules vs. Using Your Judgment
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), ''Following Rules vs. Using Your Judgment'', ''Silly Topic Debate'',
    ''8addaf36-3881-49d8-ab34-444c399bf432'', ''EASY'',
    ''Silly Topic Debate'', NOW(), ''ec7f3910-d9a3-4957-93c1-198cdd131409'',
    ''SUPER_ADMIN'', false, false, 3, NULL, ''https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/18.png''
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, ''topic'', ''Following rules is always better than using your own judgment'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''user_side'', ''Judgment'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''ai_side'', ''Rules'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''content'', ''Rules keep things fair and safe for everyone in the community.
Interesting! Can you think of a time when your judgment matters more?
Give your final argument and conclude the debate.'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_topic'', ''Ice Cream is better than Pizza'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_user_side'', ''Ice cream is cold and sweet, and it makes people happy on hot days!'', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, ''example_ai_side'', ''Pizza has cheese and toppings and can be eaten anytime, unlike ice cream.'', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, ''Following Rules vs. Using Your Judgment'',
    ''{"lesson_name": "Following Rules vs. Using Your Judgment", "lesson_description": "Silly Topic Debate", "training_module_id": "8addaf36-3881-49d8-ab34-444c399bf432", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Silly Topic Debate", "contents": [{"content_key": "topic", "content_value": "Following rules is always better than using your own judgment"}, {"content_key": "user_side", "content_value": "Judgment"}, {"content_key": "ai_side", "content_value": "Rules"}, {"content_key": "content", "content_value": "Rules keep things fair and safe for everyone in the community.\nInteresting! Can you think of a time when your judgment matters more?\nGive your final argument and conclude the debate."}, {"content_key": "example_topic", "content_value": "Ice Cream is better than Pizza"}, {"content_key": "example_user_side", "content_value": "Ice cream is cold and sweet, and it makes people happy on hot days!"}, {"content_key": "example_ai_side", "content_value": "Pizza has cheese and toppings and can be eaten anytime, unlike ice cream."}]}'' ,
    ''published'', true, NOW()
  );
END $$;
