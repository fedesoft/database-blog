INSERT INTO posts (author, title, image, post, slug, views)
VALUES ('John Doe', 'Introduction to AI', 'intro_ai.jpg', '<h1>AI is shaping our future.</h1><p>Let''s explore its basics.</p>', 'introduction-to-ai', 150);

INSERT INTO posts (author, title, image, post, slug, views)
VALUES ('Jane Smith', 'The Art of Cooking', 'cooking.jpg', '<h1>Dive into the world of culinary arts.</h1><p>Explore the wonders of gastronomy.</p>', 'art-of-cooking', 230);

INSERT INTO posts (author, title, image, post, slug, views)
VALUES ('Emily Brown', 'Exploring Space Exploration', 'space_exploration.jpg', '<h1>Journey through the cosmos.</h1><p>Unravel the mysteries of space.</p>', 'space-exploration', 80);

INSERT INTO posts (author, title, image, post, slug, views)
VALUES ('David Miller', 'The Future of Renewable Energy', 'renewable_energy.jpg', '<h1>Investigating green technology.</h1><p>Latest breakthroughs in renewable energy.</p>', 'future-of-renewable-energy', 320);


INSERT INTO categories (name, slug)
VALUES ('Technology', 'technology');

INSERT INTO categories (name, slug)
VALUES ('Food', 'food');

INSERT INTO categories (name, slug)
VALUES ('Science', 'science');

INSERT INTO categories (name, slug)
VALUES ('Environment', 'environment');


CREATE TEMP TABLE temp_posts_categories_correct AS (
    SELECT 
        p.id AS post_id,
        c.id AS category_id
    FROM 
        posts p
    INNER JOIN 
        categories c ON p.id = c.id
);


INSERT INTO posts_categories (post_id, category_id)
SELECT post_id, category_id FROM temp_posts_categories_correct;


DROP TABLE temp_posts_categories_correct;
