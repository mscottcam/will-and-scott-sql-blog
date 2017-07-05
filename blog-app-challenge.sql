CREATE TABLE users (
  id serial PRIMARY KEY
  first_name text
  last_name text
  email text NOT NULL
  screen_name text NOT NULL
);

CREATE TABLE posts (
  id serial PRIMARY KEY
  author_id int REFERENCES users
  title text
  content text
  published timestamp DEFAULT now()
)

-- make table for tags
-- table for tags that belong to post
-- table for comments
