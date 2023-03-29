CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  name text,
  content text
);

-- Then the table with the foreign key first.
CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title text,
  content text,
-- The foreign key name is always {other_table_singular}_id
  comment_id int,
  constraint fk_comment foreign key(comment_id)
    references posts(id)
    on delete cascade
);