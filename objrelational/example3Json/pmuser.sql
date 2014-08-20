CREATE TABLE book
(
  book_id INT PRIMARY KEY,
  book_json CLOB,
  create_date TIMESTAMP DEFAULT SYSTIMESTAMP,
  last_modified_ts TIMESTAMP DEFAULT SYSTIMESTAMP
);

CREATE TABLE book_store
(
  book_id PRIMARY KEY,
  book_price DECIMAL(5,2),
  store_address VARCHAR(32),
  city_name VARCHAR(16),
  postal_code VARCHAR(16),
  state_prov_cd CHAR(2),
  FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE INDEX store_zip ON book_store(postal_code);

INSERT INTO book (book_id, book_json) VALUES (1,
'{
   "title" : "Hawaii",
   "author" : "James Michener",
   "isbn_number" : "1111-2222-333-444",
   "text" : "Lorem ipsum dotem cha ghuy joi"
}');

INSERT INTO book (book_id, book_json) VALUES (2,
'{
   "title" : "Bullet and Shell",
   "author" : "George F. Williams",
   "isbn_number" : "2222-3333-444-555",
   "text" : "AHUIENF AGjw weogr agjri"
}');

INSERT INTO book (book_id, book_json) VALUES (3,
'{
  "title" : "The Fires of Heaven",
  "author" : "Robert Jordan",
  "isbn_number" : "3333-4444-555-666",
  "text" : "JEFua ajarguhag aoregjag ao"
}');

INSERT INTO book_store (book_id, book_price, store_address, city_name, state_prov_cd, postal_code)
VALUES (1, 0.10, '100 Merriwhether Way', 'Shawnee', 'OK', '73102');

INSERT INTO book_store (book_id, book_price, store_address, city_name, state_prov_cd, postal_code)
VALUES (2, 6.50, '210 Main St', 'Broken Arrow', 'OK', '74106');

INSERT INTO book_store (book_id, book_price, store_address, city_name, state_prov_cd, postal_code)
VALUES (3, 12.50, '210 Main St', 'Broken Arrow', 'OK', '74106');



SELECT b.title
  FROM book_store bs, book bk,
       json_table(bk.book_json, '$'
         COLUMNS (title VARCHAR(32) PATH '$.title',
                  author VARCHAR(32) PATH '$.author',
                  isbn_number VARCHAR(32) PATH '$.isbn_number') AS b
  WHERE b.title = 'Robert Jordan'
  AND bs.city_name = 'Broken Arrow';
  
  SELECT b.title, c.chapter_number, c.chapter_name
  FROM book bk,
       json_table(bk.book_json '$',
        COLUMNS (title VARCHAR(32) PATH '$.title',
                 author VARCHAR(32) PATH '$.author',
                 text VARCHAR(255) FORMAT JSON)) AS b,
       json_table(b.text '$',
        COLUMNS (chapter_name VARCHAR(21) PATH '$.chapter.name',
                 chapter_number NUMBER(3,0) PATH '$.chapter.number')) AS c