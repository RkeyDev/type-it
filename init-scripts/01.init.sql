-- Ensure clean state
DROP TABLE IF EXISTS english_questions CASCADE;
DROP TABLE IF EXISTS hebrew_questions CASCADE;

-- Create Schema matching your DatabaseTable Resource names
CREATE TABLE english_questions (
    id SERIAL PRIMARY KEY,
    question TEXT NOT NULL UNIQUE,
    possible_answers TEXT[] NOT NULL -- Maps perfectly to java.sql.Array
);

CREATE TABLE hebrew_questions (
    id SERIAL PRIMARY KEY,
    question TEXT NOT NULL UNIQUE,
    possible_answers TEXT[] NOT NULL
);

-- Seed Minimal Data Matrix for Verification
INSERT INTO english_questions (question, possible_answers) VALUES
('Name an animal', ARRAY['dog', 'cat', 'elephant', 'tiger', 'lion', 'giraffe']),
('Name a hot dish', ARRAY['soup', 'pizza', 'lasagna', 'stew', 'casserole', 'ramen']);

INSERT INTO hebrew_questions (question, possible_answers) VALUES
('שם של חיה', ARRAY['כלב', 'חתול', 'אריה', 'פיל', 'נמר']),
('שם של מאכל חם', ARRAY['מרק', 'פיצה', 'לזניה', 'תבשיל']);