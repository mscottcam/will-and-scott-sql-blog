CREATE TABLE users (
  id serial PRIMARY KEY,
  first_name text,
  last_name text,
  email text NOT NULL,
  screen_name text NOT NULL
);

CREATE TABLE posts (
  id serial PRIMARY KEY,
  author_id int REFERENCES users,
  title text,
  content text,
  published timestamp DEFAULT now(),
  comments, 
  tags
);

CREATE TABLE comments (
 id serial PRIMARY KEY,
 author_id int REFERENCES users,
 post_id int REFERENCES posts,
 comment text NOT NULL
);

CREATE TABLE tags (
  current events text 
)

-- make table for tags
-- table for tags that belong to post
-- table for comments

INSERT INTO users (first_name,last_name, email, screen_name);
VALUES (Allen, Poe, theRaven@chamberdoor.com, heartbreaker001), (William, Shakespere, RomeoGoingHAM@aol.com, theGOAT123)

INSERT INTO posts (author_id int REFERENCES users,
  title text,
  content text,
  published timestamp DEFAULT now(),
  comments, 
  tags
);