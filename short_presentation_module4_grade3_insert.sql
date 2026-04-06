-- =====================================================
-- SHORT PRESENTATION (Presentation Skill) — Module 4
-- Grade 3 · EASY · NY ELA Standards Aligned
-- Run this entire script in a single pgAdmin query window
-- =====================================================

-- Lesson 1: How to Make a Peanut Butter Sandwich
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How to Make a Peanut Butter Sandwich', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/37.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the steps for making a simple peanut butter sandwich.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what two things you need first.Explain how to spread the peanut butter.Describe how to put the sandwich together.End with why it makes a good snack', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How to Make a Peanut Butter Sandwich',
    '{"lesson_name": "How to Make a Peanut Butter Sandwich", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the steps for making a simple peanut butter sandwich."}, {"content_key": "preparation_guidelines", "content_value": "Say what two things you need first.Explain how to spread the peanut butter.Describe how to put the sandwich together.End with why it makes a good snack"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: How to Pack a Backpack
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How to Pack a Backpack', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe the steps for packing a school backpack correctly.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what goes in first (heaviest items).Explain where smaller things like pencils go.Describe how to zip and check the bag.End with why packing carefully saves time', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How to Pack a Backpack',
    '{"lesson_name": "How to Pack a Backpack", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe the steps for packing a school backpack correctly."}, {"content_key": "preparation_guidelines", "content_value": "Say what goes in first (heaviest items).Explain where smaller things like pencils go.Describe how to zip and check the bag.End with why packing carefully saves time"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: How Rain Falls from Clouds
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Rain Falls from Clouds', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/15.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how water in clouds becomes rain that falls to the ground.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say where water in clouds comes from.Explain what makes it heavy enough to fall.Describe what rain looks and feels like.End with why rain is important for plants', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Rain Falls from Clouds',
    '{"lesson_name": "How Rain Falls from Clouds", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how water in clouds becomes rain that falls to the ground."}, {"content_key": "preparation_guidelines", "content_value": "Say where water in clouds comes from.Explain what makes it heavy enough to fall.Describe what rain looks and feels like.End with why rain is important for plants"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: How a Seed Becomes a Plant
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How a Seed Becomes a Plant', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe the steps a seed goes through to grow into a plant.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what a seed needs to start growing.Explain how roots grow first underground.Describe how a stem and leaves appear.Mention how sunlight helps the plant grow.End with an interesting fact about seeds', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How a Seed Becomes a Plant',
    '{"lesson_name": "How a Seed Becomes a Plant", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe the steps a seed goes through to grow into a plant."}, {"content_key": "preparation_guidelines", "content_value": "Say what a seed needs to start growing.Explain how roots grow first underground.Describe how a stem and leaves appear.Mention how sunlight helps the plant grow.End with an interesting fact about seeds"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: How Butterflies Change
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Butterflies Change', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/49.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe the four stages of a butterfly''s life cycle.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say where butterflies begin (eggs on leaves).Explain what a caterpillar does to prepare.Describe the chrysalis stage.Mention what comes out at the end.End with a surprising butterfly fact', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Butterflies Change',
    '{"lesson_name": "How Butterflies Change", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe the four stages of a butterfly''s life cycle."}, {"content_key": "preparation_guidelines", "content_value": "Say where butterflies begin (eggs on leaves).Explain what a caterpillar does to prepare.Describe the chrysalis stage.Mention what comes out at the end.End with a surprising butterfly fact"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: How to Wash Your Hands Properly
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How to Wash Your Hands Properly', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/71.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain the correct steps for washing hands to stay healthy.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say when you should wash your hands.Explain how to use soap and water together.Describe how long to scrub (20 seconds).Mention how to dry hands after.End with why clean hands prevent sickness', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How to Wash Your Hands Properly',
    '{"lesson_name": "How to Wash Your Hands Properly", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain the correct steps for washing hands to stay healthy."}, {"content_key": "preparation_guidelines", "content_value": "Say when you should wash your hands.Explain how to use soap and water together.Describe how long to scrub (20 seconds).Mention how to dry hands after.End with why clean hands prevent sickness"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: How Dogs Communicate
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Dogs Communicate', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/28.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how dogs use their body to show how they feel.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what a wagging tail means.Explain what it means when a dog lowers its head.Describe what barking can tell us.Mention how ears show feelings.End with why understanding dogs keeps us safe', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Dogs Communicate',
    '{"lesson_name": "How Dogs Communicate", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how dogs use their body to show how they feel."}, {"content_key": "preparation_guidelines", "content_value": "Say what a wagging tail means.Explain what it means when a dog lowers its head.Describe what barking can tell us.Mention how ears show feelings.End with why understanding dogs keeps us safe"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: How Volcanoes Work
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Volcanoes Work', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/94.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe how hot melted rock builds up inside a volcano and erupts.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what magma is and where it comes from.Explain how pressure builds up over time.Describe what happens during an eruption.Mention how lava cools and hardens.End with one safe fact about volcanoes', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Volcanoes Work',
    '{"lesson_name": "How Volcanoes Work", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe how hot melted rock builds up inside a volcano and erupts."}, {"content_key": "preparation_guidelines", "content_value": "Say what magma is and where it comes from.Explain how pressure builds up over time.Describe what happens during an eruption.Mention how lava cools and hardens.End with one safe fact about volcanoes"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: How the Sun Gives Us Light and Heat
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How the Sun Gives Us Light and Heat', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/56.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the sun sends light and warmth to Earth every day.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say how far away the sun is.Explain how sunlight travels to reach us.Describe what happens when clouds block the sun.Mention what we use sunlight for.End with why Earth needs the sun to survive', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Sun Gives Us Light and Heat',
    '{"lesson_name": "How the Sun Gives Us Light and Heat", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the sun sends light and warmth to Earth every day."}, {"content_key": "preparation_guidelines", "content_value": "Say how far away the sun is.Explain how sunlight travels to reach us.Describe what happens when clouds block the sun.Mention what we use sunlight for.End with why Earth needs the sun to survive"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: How Fish Breathe Underwater
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Fish Breathe Underwater', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/13.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how fish use gills to breathe oxygen from water.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say that fish do not breathe air like we do.Explain what gills are and where they are on a fish.Describe how water passes through the gills.Mention how oxygen enters the fish''s blood.End with a fun comparison between gills and lungs', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Fish Breathe Underwater',
    '{"lesson_name": "How Fish Breathe Underwater", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how fish use gills to breathe oxygen from water."}, {"content_key": "preparation_guidelines", "content_value": "Say that fish do not breathe air like we do.Explain what gills are and where they are on a fish.Describe how water passes through the gills.Mention how oxygen enters the fish''s blood.End with a fun comparison between gills and lungs"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: How Bees Help Flowers
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Bees Help Flowers', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how bees and flowers work together so both can survive.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what bees collect from flowers.Explain how pollen sticks to the bee''s body.Describe how the bee carries pollen to another flower.Mention what the flower gets from this process.End with why bees are important to our food supply', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Bees Help Flowers',
    '{"lesson_name": "How Bees Help Flowers", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how bees and flowers work together so both can survive."}, {"content_key": "preparation_guidelines", "content_value": "Say what bees collect from flowers.Explain how pollen sticks to the bee''s body.Describe how the bee carries pollen to another flower.Mention what the flower gets from this process.End with why bees are important to our food supply"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: How the Moon Reflects Light
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How the Moon Reflects Light', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/42.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain why the moon glows at night even though it has no light of its own.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say that the moon does not make its own light.Explain how sunlight bounces off the moon''s surface.Describe why we can see it at night.Mention why the moon looks different shapes each week.End with a moon fact students can share', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How the Moon Reflects Light',
    '{"lesson_name": "How the Moon Reflects Light", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain why the moon glows at night even though it has no light of its own."}, {"content_key": "preparation_guidelines", "content_value": "Say that the moon does not make its own light.Explain how sunlight bounces off the moon''s surface.Describe why we can see it at night.Mention why the moon looks different shapes each week.End with a moon fact students can share"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: How Ice Turns Into Water
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Ice Turns Into Water', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe what happens when ice is left at room temperature.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what ice is made of.Explain what heat does to ice particles.Describe the melting process step by step.Mention where you see this happen in real life.End with what happens if you heat the water even more', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Ice Turns Into Water',
    '{"lesson_name": "How Ice Turns Into Water", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe what happens when ice is left at room temperature."}, {"content_key": "preparation_guidelines", "content_value": "Say what ice is made of.Explain what heat does to ice particles.Describe the melting process step by step.Mention where you see this happen in real life.End with what happens if you heat the water even more"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: How Books Are Made
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Books Are Made', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/65.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe the steps that turn an author''s idea into a book on a shelf.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say where a book starts (with an idea or story).Explain the roles of an author and an illustrator.Describe what an editor does to help.Mention how the book is printed and bound.End with how the book reaches a library or store', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Books Are Made',
    '{"lesson_name": "How Books Are Made", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe the steps that turn an author''s idea into a book on a shelf."}, {"content_key": "preparation_guidelines", "content_value": "Say where a book starts (with an idea or story).Explain the roles of an author and an illustrator.Describe what an editor does to help.Mention how the book is printed and bound.End with how the book reaches a library or store"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: How Recycling Works
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Recycling Works', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/31.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how used materials like paper and plastic are turned into new things.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what recycling means.Explain what happens after something goes in the recycling bin.Describe how materials are sorted and cleaned.Mention one example of what recycled plastic can become.End with why recycling helps the planet', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Recycling Works',
    '{"lesson_name": "How Recycling Works", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how used materials like paper and plastic are turned into new things."}, {"content_key": "preparation_guidelines", "content_value": "Say what recycling means.Explain what happens after something goes in the recycling bin.Describe how materials are sorted and cleaned.Mention one example of what recycled plastic can become.End with why recycling helps the planet"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: How Our Lungs Work
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Our Lungs Work', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/88.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how lungs bring oxygen into the body when we breathe.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say where our lungs are located.Explain what happens when we breathe in.Describe how oxygen gets into our blood.Mention what the lungs push out when we exhale.End with why exercising makes lungs stronger', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Our Lungs Work',
    '{"lesson_name": "How Our Lungs Work", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how lungs bring oxygen into the body when we breathe."}, {"content_key": "preparation_guidelines", "content_value": "Say where our lungs are located.Explain what happens when we breathe in.Describe how oxygen gets into our blood.Mention what the lungs push out when we exhale.End with why exercising makes lungs stronger"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: How Birds Build Nests
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Birds Build Nests', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/20.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Describe how birds find materials and construct their nests.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what birds use to build nests (twigs, grass, mud).Explain how they find and carry materials.Describe how they weave the nest together.Mention why different birds build different nests.End with why nests are important for young birds', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Birds Build Nests',
    '{"lesson_name": "How Birds Build Nests", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Describe how birds find materials and construct their nests."}, {"content_key": "preparation_guidelines", "content_value": "Say what birds use to build nests (twigs, grass, mud).Explain how they find and carry materials.Describe how they weave the nest together.Mention why different birds build different nests.End with why nests are important for young birds"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: How Food Gives Us Energy
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Food Gives Us Energy', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/53.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the food we eat gives our bodies the energy to move and think.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what energy is and why our bodies need it.Explain how our stomachs break food down.Describe how nutrients travel through the blood.Mention which foods give the most lasting energy.End with a tip for choosing energy-giving foods', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Food Gives Us Energy',
    '{"lesson_name": "How Food Gives Us Energy", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the food we eat gives our bodies the energy to move and think."}, {"content_key": "preparation_guidelines", "content_value": "Say what energy is and why our bodies need it.Explain how our stomachs break food down.Describe how nutrients travel through the blood.Mention which foods give the most lasting energy.End with a tip for choosing energy-giving foods"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: How Earthquakes Happen
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Earthquakes Happen', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/96.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Explain how the movement of Earth''s plates causes earthquakes.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what Earth''s plates are and where they are found.Explain what happens when two plates push against each other.Describe what shaking feels like during an earthquake.Mention how scientists measure earthquake strength.End with one safety tip for what to do during an earthquake', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Earthquakes Happen',
    '{"lesson_name": "How Earthquakes Happen", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Explain how the movement of Earth''s plates causes earthquakes."}, {"content_key": "preparation_guidelines", "content_value": "Say what Earth''s plates are and where they are found.Explain what happens when two plates push against each other.Describe what shaking feels like during an earthquake.Mention how scientists measure earthquake strength.End with one safety tip for what to do during an earthquake"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: How Electricity Reaches Our Homes
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'How Electricity Reaches Our Homes', 'Short Presentation Skills for Grade 3',
    'e9f70a86-834f-4f3c-aa92-7bbd98e9ad72', 'EASY',
    'Presentation Skill', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/44.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'topic_overview', 'Trace the path electricity takes from a power plant to a light switch at home.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'preparation_guidelines', 'Say what a power plant does.Explain how electricity travels through large wires.Describe how it reaches a neighborhood and enters homes.Mention what happens when you flip a light switch.End with one way families can use less electricity', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_heading', 'Say what reading is. List 2–3 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example_content', 'Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'How Electricity Reaches Our Homes',
    '{"lesson_name": "How Electricity Reaches Our Homes", "lesson_description": "Short Presentation Skills for Grade 3", "training_module_id": "e9f70a86-834f-4f3c-aa92-7bbd98e9ad72", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Presentation Skill", "contents": [{"content_key": "topic_overview", "content_value": "Trace the path electricity takes from a power plant to a light switch at home."}, {"content_key": "preparation_guidelines", "content_value": "Say what a power plant does.Explain how electricity travels through large wires.Describe how it reaches a neighborhood and enters homes.Mention what happens when you flip a light switch.End with one way families can use less electricity"}, {"content_key": "example_heading", "content_value": "Say what reading is. List 2\u20133 benefits of reading regularly. Explain how it helps your mind and creativity. End with a strong call-to-action!"}, {"content_key": "example_content", "content_value": "Reading is when you explore stories or learn new things through books. It can help you relax, spark your imagination, and improve your vocabulary. Plus, it''s a great way to travel to new worlds without leaving home. So grab a book today and start your next adventure!"}]}',
    'published', true, NOW()
  );
END $$;
