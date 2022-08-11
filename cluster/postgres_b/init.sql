CREATE TABLE regular_books
(
    id          bigint            not null,
    category_id int not null,
    title       character varying not null
);

CREATE INDEX books_category_id_idx ON regular_books USING btree(category_id);

INSERT INTO regular_books (id, category_id, title)
SELECT generate_series(1, 1000000),
       round(random() + 1) ::int AS category_id,
       md5(random()::text) as title;