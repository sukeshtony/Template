-- Module 1: Reading a Paragraph - Grade 3
-- 20 Lessons generated in simple query format (matching Poem style)
-- Includes lesson_version_new inserts as requested.
-- Training Module: Paragraph Reading Test (1c83484e-7cf1-4e26-8503-62cff6d07789)

-- Lesson 1: Sofia Shares Her Snack
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Sofia Shares Her Snack', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/45.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Sofia brought a bag of crackers to school for snack time. When she opened her lunch box, her classmate Priya looked over and said she had forgotten her snack at home. Sofia felt a little unsure because she only had enough for herself. Then she thought about how hungry she would feel without any snack. Sofia smiled and split her crackers into two equal piles. She handed one pile to Priya and said, ''Here, we can share.'' Priya said thank you and looked relieved. Sofia felt warm inside knowing she had helped. She learned that sharing, even a little, can make a big difference to someone else.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Sofia Shares Her Snack',
    '{"lesson_name": "Sofia Shares Her Snack", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Sofia brought a bag of crackers to school for snack time. When she opened her lunch box, her classmate Priya looked over and said she had forgotten her snack at home. Sofia felt a little unsure because she only had enough for herself. Then she thought about how hungry she would feel without any snack. Sofia smiled and split her crackers into two equal piles. She handed one pile to Priya and said, ''Here, we can share.'' Priya said thank you and looked relieved. Sofia felt warm inside knowing she had helped. She learned that sharing, even a little, can make a big difference to someone else."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 2: Jaylen Picks Up the Crayons
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Jaylen Picks Up the Crayons', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/12.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During art class, Jaylen accidentally knocked a box of crayons off the table. They scattered all over the floor. He felt embarrassed and looked around to see if anyone noticed. A few kids glanced over. Jaylen took a breath and got down to pick them all up one by one. His teacher noticed and nodded with a smile. Jaylen put the box back neatly on the table and continued his drawing. By the end of class, he felt proud that he had handled the situation calmly. He learned that fixing a mistake quickly is a good thing to do.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Jaylen Picks Up the Crayons',
    '{"lesson_name": "Jaylen Picks Up the Crayons", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During art class, Jaylen accidentally knocked a box of crayons off the table. They scattered all over the floor. He felt embarrassed and looked around to see if anyone noticed. A few kids glanced over. Jaylen took a breath and got down to pick them all up one by one. His teacher noticed and nodded with a smile. Jaylen put the box back neatly on the table and continued his drawing. By the end of class, he felt proud that he had handled the situation calmly. He learned that fixing a mistake quickly is a good thing to do."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 3: Amara Says Good Morning
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Amara Says Good Morning', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/87.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Amara walked into class one morning feeling quiet and a little sleepy. She passed her classmate Leo, who looked sad sitting by himself. Amara almost walked past him, but then she stopped. She said, ''Good morning, Leo.'' Leo looked up and smiled a little. ''Good morning,'' he said back. Amara sat down and felt glad she had said something. It only took two words, but it seemed to make Leo feel a little better. Amara learned that a simple greeting can help someone feel noticed and cared for.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Amara Says Good Morning',
    '{"lesson_name": "Amara Says Good Morning", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Amara walked into class one morning feeling quiet and a little sleepy. She passed her classmate Leo, who looked sad sitting by himself. Amara almost walked past him, but then she stopped. She said, ''Good morning, Leo.'' Leo looked up and smiled a little. ''Good morning,'' he said back. Amara sat down and felt glad she had said something. It only took two words, but it seemed to make Leo feel a little better. Amara learned that a simple greeting can help someone feel noticed and cared for."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 4: Marcus Waits for His Turn
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Marcus Waits for His Turn', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/3.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During reading circle, Marcus had an answer he really wanted to share. He felt excited and raised his hand quickly. But his teacher called on someone else first. Marcus felt a little frustrated and started to blurt out his answer anyway. He stopped himself. He lowered his hand and listened while his classmate spoke. When it was finally his turn, Marcus shared his idea clearly. His teacher said it was a great point. Marcus felt proud not just for the answer, but for waiting his turn. He learned that listening to others first makes your own voice matter more when you speak.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Marcus Waits for His Turn',
    '{"lesson_name": "Marcus Waits for His Turn", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During reading circle, Marcus had an answer he really wanted to share. He felt excited and raised his hand quickly. But his teacher called on someone else first. Marcus felt a little frustrated and started to blurt out his answer anyway. He stopped himself. He lowered his hand and listened while his classmate spoke. When it was finally his turn, Marcus shared his idea clearly. His teacher said it was a great point. Marcus felt proud not just for the answer, but for waiting his turn. He learned that listening to others first makes your own voice matter more when you speak."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 5: Destiny Tries Again
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Destiny Tries Again', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/56.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Destiny tried to tie her shoes three times, but the laces kept coming undone. She groaned and felt like giving up. Her friend Kwame watched and offered to do it for her. Destiny felt tempted to say yes, but she also wanted to learn how to do it herself. She shook her head and said, ''Let me try one more time.'' She slowed down, looped the laces carefully, and pulled the bow tight. It stayed. Destiny smiled and stood up feeling strong. She learned that trying again — even when something is hard — is how you really learn.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Destiny Tries Again',
    '{"lesson_name": "Destiny Tries Again", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Destiny tried to tie her shoes three times, but the laces kept coming undone. She groaned and felt like giving up. Her friend Kwame watched and offered to do it for her. Destiny felt tempted to say yes, but she also wanted to learn how to do it herself. She shook her head and said, ''Let me try one more time.'' She slowed down, looped the laces carefully, and pulled the bow tight. It stayed. Destiny smiled and stood up feeling strong. She learned that trying again \u2014 even when something is hard \u2014 is how you really learn."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 6: Tomás Asks for Help
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Tomás Asks for Help', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/29.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During a math test, Tomás got stuck on a word problem. He read it twice and still felt confused. He didn''t want to raise his hand because he worried his classmates would think he didn''t know anything. He stared at his paper for a moment. Then he remembered what his teacher always said: asking for help is smart, not weak. Tomás raised his hand quietly. His teacher came over and whispered a hint. Tomás understood and finished the problem on his own. He felt relieved and confident. He learned that asking for help when you need it is a sign of strength.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tomás Asks for Help',
    '{"lesson_name": "Tomás Asks for Help", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During a math test, Tom\u00E1s got stuck on a word problem. He read it twice and still felt confused. He didn''t want to raise his hand because he worried his classmates would think he didn''t know anything. He stared at his paper for a moment. Then he remembered what his teacher always said: asking for help is smart, not weak. Tom\u00E1s raised his hand quietly. His teacher came over and whispered a hint. Tom\u00E1s understood and finished the problem on his own. He felt relieved and confident. He learned that asking for help when you need it is a sign of strength."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 7: Layla Cheers for Her Teammate
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Layla Cheers for Her Teammate', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/99.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During gym class, Layla''s team was playing a relay race. Her teammate Jonas kept dropping the baton and they were falling behind. Some kids groaned. Layla felt disappointed for a second, but then she looked at Jonas. He looked like he wanted to hide. Layla ran over after the race and said, ''You tried your best. We''ll do better next time.'' Jonas looked surprised, then nodded and smiled. Layla''s teacher praised her for being a good sport. Layla learned that encouraging your teammates matters more than winning a race.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Layla Cheers for Her Teammate',
    '{"lesson_name": "Layla Cheers for Her Teammate", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During gym class, Layla''s team was playing a relay race. Her teammate Jonas kept dropping the baton and they were falling behind. Some kids groaned. Layla felt disappointed for a second, but then she looked at Jonas. He looked like he wanted to hide. Layla ran over after the race and said, ''You tried your best. We''ll do better next time.'' Jonas looked surprised, then nodded and smiled. Layla''s teacher praised her for being a good sport. Layla learned that encouraging your teammates matters more than winning a race."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 8: Nadia Chooses Kindness Over Gossip
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Nadia Chooses Kindness Over Gossip', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/14.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At lunch, two of Nadia''s friends were whispering about a classmate''s haircut and giggling. They asked Nadia what she thought. Nadia paused. She didn''t think the haircut was funny, but she also didn''t want her friends to feel bad. She said quietly, ''I think it''s fine. Let''s talk about something else.'' Her friends shrugged and moved on to a different topic. Nadia felt relieved. Later, she saw the classmate laughing with other kids and felt glad she hadn''t added to something unkind. She learned that choosing not to go along with gossip is a small but important act of courage.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Nadia Chooses Kindness Over Gossip',
    '{"lesson_name": "Nadia Chooses Kindness Over Gossip", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At lunch, two of Nadia''s friends were whispering about a classmate''s haircut and giggling. They asked Nadia what she thought. Nadia paused. She didn''t think the haircut was funny, but she also didn''t want her friends to feel bad. She said quietly, ''I think it''s fine. Let''s talk about something else.'' Her friends shrugged and moved on to a different topic. Nadia felt relieved. Later, she saw the classmate laughing with other kids and felt glad she hadn''t added to something unkind. She learned that choosing not to go along with gossip is a small but important act of courage."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 9: Elijah Calms Down Before Reacting
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Elijah Calms Down Before Reacting', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/63.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'When Elijah got back his graded quiz, he saw a lower score than he expected. He felt a flash of anger and almost crumpled it up. But he remembered his teacher''s advice: pause before reacting. Elijah set the paper down and took two slow breaths. Then he looked at his mistakes carefully. He realized he had misread two questions. He thought, ''I know this. I just need to slow down next time.'' Elijah folded the quiz and put it in his folder. He felt calmer and more focused. He learned that pausing before reacting helps you make better decisions.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Elijah Calms Down Before Reacting',
    '{"lesson_name": "Elijah Calms Down Before Reacting", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "When Elijah got back his graded quiz, he saw a lower score than he expected. He felt a flash of anger and almost crumpled it up. But he remembered his teacher''s advice: pause before reacting. Elijah set the paper down and took two slow breaths. Then he looked at his mistakes carefully. He realized he had misread two questions. He thought, ''I know this. I just need to slow down next time.'' Elijah folded the quiz and put it in his folder. He felt calmer and more focused. He learned that pausing before reacting helps you make better decisions."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 10: Zara Stands Up for a Friend
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Zara Stands Up for a Friend', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/72.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At recess, a group of kids was teasing Mia because she tripped and fell. They laughed and pointed. Mia looked close to tears. Zara watched and felt uncomfortable. She walked over, offered Mia her hand, and helped her up. Then she turned to the group and said calmly, ''That wasn''t nice. It could happen to anyone.'' The kids went quiet and walked away. Mia whispered, ''Thank you.'' Zara nodded and they walked to the swings together. Zara learned that standing up for a friend — even when it''s uncomfortable — is one of the bravest things you can do.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Zara Stands Up for a Friend',
    '{"lesson_name": "Zara Stands Up for a Friend", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At recess, a group of kids was teasing Mia because she tripped and fell. They laughed and pointed. Mia looked close to tears. Zara watched and felt uncomfortable. She walked over, offered Mia her hand, and helped her up. Then she turned to the group and said calmly, ''That wasn''t nice. It could happen to anyone.'' The kids went quiet and walked away. Mia whispered, ''Thank you.'' Zara nodded and they walked to the swings together. Zara learned that standing up for a friend \u2014 even when it''s uncomfortable \u2014 is one of the bravest things you can do."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 11: Isaiah Apologizes First
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Isaiah Apologizes First', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/8.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Isaiah and his friend Darius had argued at lunch over which game to play at recess. They both said mean things and then stopped talking to each other. At recess, Isaiah played alone and felt unhappy. He kept thinking about what Darius had said, but also about what he had said. He realized he hadn''t been fair either. Isaiah walked over to Darius and said, ''I''m sorry for what I said. It wasn''t cool.'' Darius looked surprised, then said, ''Me too.'' They shook hands and decided to take turns choosing games. Isaiah learned that saying sorry first takes courage, and it can fix a friendship fast.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Isaiah Apologizes First',
    '{"lesson_name": "Isaiah Apologizes First", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Isaiah and his friend Darius had argued at lunch over which game to play at recess. They both said mean things and then stopped talking to each other. At recess, Isaiah played alone and felt unhappy. He kept thinking about what Darius had said, but also about what he had said. He realized he hadn''t been fair either. Isaiah walked over to Darius and said, ''I''m sorry for what I said. It wasn''t cool.'' Darius looked surprised, then said, ''Me too.'' They shook hands and decided to take turns choosing games. Isaiah learned that saying sorry first takes courage, and it can fix a friendship fast."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 12: Carmen Notices a Classmate Is Struggling
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Carmen Notices a Classmate Is Struggling', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/33.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Carmen finished her group project early and started to pack up. She glanced over and noticed her classmate Pedro still staring at a blank poster. He looked stuck and frustrated. Carmen thought about leaving it alone \u2014 it wasn''t her job. But she remembered how much it helped when someone had showed her how to get started once. Carmen walked over and asked, ''Do you want to brainstorm together?'' Pedro nodded with relief. Together they wrote three ideas in five minutes. Pedro thanked her. Carmen learned that noticing when someone needs help \u2014 and offering without being asked \u2014 is a quiet kind of leadership.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Carmen Notices a Classmate Is Struggling',
    '{"lesson_name": "Carmen Notices a Classmate Is Struggling", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Carmen finished her group project early and started to pack up. She glanced over and noticed her classmate Pedro still staring at a blank poster. He looked stuck and frustrated. Carmen thought about leaving it alone \u2014 it wasn''t her job. But she remembered how much it helped when someone had showed her how to get started once. Carmen walked over and asked, ''Do you want to brainstorm together?'' Pedro nodded with relief. Together they wrote three ideas in five minutes. Pedro thanked her. Carmen learned that noticing when someone needs help \u2014 and offering without being asked \u2014 is a quiet kind of leadership."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 13: Tiana Speaks Up During a Meeting
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Tiana Speaks Up During a Meeting', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/91.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During morning circle, the class was deciding on a name for their class pet fish. Two kids were arguing over two names and kept repeating themselves. No one else was saying anything. Tiana thought of a different name \u2014 one that mixed parts of both suggestions. She felt nervous but raised her hand and said, ''What if we try a name that combines both ideas?'' The class got quiet. Then kids started nodding. The teacher smiled and wrote her idea on the board. The class voted and chose Tiana''s name. Tiana learned that a new idea shared at the right moment can bring a group together.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Tiana Speaks Up During a Meeting',
    '{"lesson_name": "Tiana Speaks Up During a Meeting", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During morning circle, the class was deciding on a name for their class pet fish. Two kids were arguing over two names and kept repeating themselves. No one else was saying anything. Tiana thought of a different name \u2014 one that mixed parts of both suggestions. She felt nervous but raised her hand and said, ''What if we try a name that combines both ideas?'' The class got quiet. Then kids started nodding. The teacher smiled and wrote her idea on the board. The class voted and chose Tiana''s name. Tiana learned that a new idea shared at the right moment can bring a group together."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 14: Kofi Takes Responsibility
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Kofi Takes Responsibility', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/19.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During library time, Kofi accidentally bent the cover of a library book while putting it into his backpack. He looked around \u2014 no one saw. He thought about just returning it and hoping no one noticed. But his stomach felt uneasy. He walked to the librarian and said, ''I accidentally bent this cover. I''m sorry.'' The librarian thanked him for being honest and showed him how to flatten the cover carefully. No punishment. Kofi felt much lighter walking away. He learned that telling the truth when you make a mistake is always the right choice, even when no one is watching.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Kofi Takes Responsibility',
    '{"lesson_name": "Kofi Takes Responsibility", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During library time, Kofi accidentally bent the cover of a library book while putting it into his backpack. He looked around \u2014 no one saw. He thought about just returning it and hoping no one noticed. But his stomach felt uneasy. He walked to the librarian and said, ''I accidentally bent this cover. I''m sorry.'' The librarian thanked him for being honest and showed him how to flatten the cover carefully. No punishment. Kofi felt much lighter walking away. He learned that telling the truth when you make a mistake is always the right choice, even when no one is watching."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 15: Grace Practices Patience in Line
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Grace Practices Patience in Line', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/50.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'At the water fountain, Grace was third in line. The student at the front was taking a long time. A few kids behind Grace started sighing and pushing forward. Grace felt impatient too, but she stayed where she was and kept calm. She counted slowly in her head to keep herself steady. When it was her turn, she drank quickly and stepped aside so the others could go. Her teacher, who had been watching, said quietly, ''Good example, Grace.'' Grace felt proud not for being fast, but for being patient. She learned that small acts of patience make the whole group go more smoothly.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Grace Practices Patience in Line',
    '{"lesson_name": "Grace Practices Patience in Line", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "At the water fountain, Grace was third in line. The student at the front was taking a long time. A few kids behind Grace started sighing and pushing forward. Grace felt impatient too, but she stayed where she was and kept calm. She counted slowly in her head to keep herself steady. When it was her turn, she drank quickly and stepped aside so the others could go. Her teacher, who had been watching, said quietly, ''Good example, Grace.'' Grace felt proud not for being fast, but for being patient. She learned that small acts of patience make the whole group go more smoothly."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 16: Andre Handles Losing Gracefully
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Andre Handles Losing Gracefully', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/6.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Andre''s chess team competed in a school tournament and lost in the final round. He had practiced for weeks and felt crushed. He wanted to leave immediately. Instead, he stayed and watched the winning team celebrate. He shook their hands like his coach had taught him. On the walk home, Andre was quiet. That night, he wrote in his journal: ''We lost, but I played better than ever. Next time I''ll study the opening moves.'' He felt the disappointment but kept it from turning into anger. Andre learned that losing gracefully means honoring your effort even when the result isn''t what you hoped for.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Andre Handles Losing Gracefully',
    '{"lesson_name": "Andre Handles Losing Gracefully", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Andre''s chess team competed in a school tournament and lost in the final round. He had practiced for weeks and felt crushed. He wanted to leave immediately. Instead, he stayed and watched the winning team celebrate. He shook their hands like his coach had taught him. On the walk home, Andre was quiet. That night, he wrote in his journal: ''We lost, but I played better than ever. Next time I''ll study the opening moves.'' He felt the disappointment but kept it from turning into anger. Andre learned that losing gracefully means honoring your effort even when the result isn''t what you hoped for."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 17: Isabelle Listens to Understand
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Isabelle Listens to Understand', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/82.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During a group discussion about a class story, Isabelle disagreed with what her classmate Femi said about the main character. Her first instinct was to jump in and explain why Femi was wrong. But she stopped and listened to the rest of Femi''s reasoning. Femi mentioned a detail Isabelle had missed. Isabelle reconsidered. When she spoke, she said, ''I see what you mean now. I think I missed that part.'' Femi nodded and thanked her for listening. The class moved forward with a richer conversation. Isabelle learned that listening fully \u2014 not just waiting to respond \u2014 is how you grow as a thinker and as a friend.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Isabelle Listens to Understand',
    '{"lesson_name": "Isabelle Listens to Understand", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During a group discussion about a class story, Isabelle disagreed with what her classmate Femi said about the main character. Her first instinct was to jump in and explain why Femi was wrong. But she stopped and listened to the rest of Femi''s reasoning. Femi mentioned a detail Isabelle had missed. Isabelle reconsidered. When she spoke, she said, ''I see what you mean now. I think I missed that part.'' Femi nodded and thanked her for listening. The class moved forward with a richer conversation. Isabelle learned that listening fully \u2014 not just waiting to respond \u2014 is how you grow as a thinker and as a friend."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 18: Victor Speaks Up About Fairness
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Victor Speaks Up About Fairness', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/21.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During group work, Victor noticed that one student, Alex, was doing almost all the work while the others sat back. Alex didn''t say anything, but looked tired. Victor felt uncomfortable watching. He spoke up to the group: ''I think we should split the work more evenly. Alex is doing most of it.'' There was a brief silence. Then the group reorganized the tasks. Alex looked relieved. The teacher overheard and mentioned it at the end of class as an example of good leadership. Victor learned that speaking up for fairness \u2014 even when it''s awkward \u2014 builds a better team and a stronger classroom.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Victor Speaks Up About Fairness',
    '{"lesson_name": "Victor Speaks Up About Fairness", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During group work, Victor noticed that one student, Alex, was doing almost all the work while the others sat back. Alex didn''t say anything, but looked tired. Victor felt uncomfortable watching. He spoke up to the group: ''I think we should split the work more evenly. Alex is doing most of it.'' There was a brief silence. Then the group reorganized the tasks. Alex looked relieved. The teacher overheard and mentioned it at the end of class as an example of good leadership. Victor learned that speaking up for fairness \u2014 even when it''s awkward \u2014 builds a better team and a stronger classroom."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 19: Maya Reflects on Her Own Mistake
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Maya Reflects on Her Own Mistake', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/77.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'During a class debate, Maya had said something that came out sharper than she intended. She could tell it had stung one of her classmates. That evening, she kept thinking about it. She wasn''t sure if she needed to apologize since it wasn''t exactly wrong \u2014 just unkind in how she said it. The next morning, Maya found her classmate and said, ''Yesterday I didn''t say that in a kind way. I''m sorry.'' Her classmate looked surprised but smiled. Maya felt the weight lift. She learned that reflecting on how we speak \u2014 not just what we say \u2014 is how we become better communicators and kinder people.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Maya Reflects on Her Own Mistake',
    '{"lesson_name": "Maya Reflects on Her Own Mistake", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "During a class debate, Maya had said something that came out sharper than she intended. She could tell it had stung one of her classmates. That evening, she kept thinking about it. She wasn''t sure if she needed to apologize since it wasn''t exactly wrong \u2014 just unkind in how she said it. The next morning, Maya found her classmate and said, ''Yesterday I didn''t say that in a kind way. I''m sorry.'' Her classmate looked surprised but smiled. Maya felt the weight lift. She learned that reflecting on how we speak \u2014 not just what we say \u2014 is how we become better communicators and kinder people."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;

-- Lesson 20: Damien Finds a New Way to Belong
DO $$
DECLARE v_lesson_id UUID;
BEGIN
  INSERT INTO bantrly.lesson (
    lesson_id, lesson_name, lesson_description, training_module_id,
    difficulty_level, lesson_type, created_on, created_by,
    created_by_role, is_deleted, is_assessment, grade, section, lesson_image_url
  ) VALUES (
    gen_random_uuid(), 'Damien Finds a New Way to Belong', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.',
    '1c83484e-7cf1-4e26-8503-62cff6d07789', 'EASY',
    'Paragraph Reading Test', NOW(), 'ec7f3910-d9a3-4957-93c1-198cdd131409',
    'SUPER_ADMIN', false, false, 3, NULL, 'https://ai-voice-app-audio-storage.s3.us-east-1.amazonaws.com/lesson_images/38.png'
  ) RETURNING lesson_id INTO v_lesson_id;

  INSERT INTO bantrly.lesson_content (content_id, lesson_id, content_key, content_value, created_at, updated_at) VALUES
    (gen_random_uuid(), v_lesson_id, 'passage', 'Damien transferred to a new school mid-year. He felt invisible in class and left out at recess. He wanted to join a group but didn''t know how. One day he noticed kids playing a card game he knew well. He walked over and watched. After a minute he said, ''I know that game. Can I play?'' The kids made room for him. He won the first round and everyone laughed together. By the end of recess, he had exchanged names with three new kids. That night, Damien felt something shift inside him. He learned that finding one small thing you share with others is often the first step to belonging somewhere new.', NOW(), NOW()),
    (gen_random_uuid(), v_lesson_id, 'example', 'Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.', NOW(), NOW());

  INSERT INTO bantrly.lesson_version_new (
    lesson_version_id, lesson_id, version_number, title, content, status, is_latest, created_at
  ) VALUES (
    gen_random_uuid(), v_lesson_id, 1, 'Damien Finds a New Way to Belong',
    '{"lesson_name": "Damien Finds a New Way to Belong", "lesson_description": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity.", "training_module_id": "1c83484e-7cf1-4e26-8503-62cff6d07789", "grade": 3, "section": null, "difficulty_level": "EASY", "lesson_type": "Paragraph Reading Test", "contents": [{"content_key": "passage", "content_value": "Damien transferred to a new school mid-year. He felt invisible in class and left out at recess. He wanted to join a group but didn''t know how. One day he noticed kids playing a card game he knew well. He walked over and watched. After a minute he said, ''I know that game. Can I play?'' The kids made room for him. He won the first round and everyone laughed together. By the end of recess, he had exchanged names with three new kids. That night, Damien felt something shift inside him. He learned that finding one small thing you share with others is often the first step to belonging somewhere new."}, {"content_key": "example", "content_value": "Read the following paragraph clearly and with appropriate expression. Focus on your pacing and clarity."}]}',
    'published', true, NOW()
  );
END $$;


