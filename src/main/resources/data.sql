TRUNCATE TABLE book_genres;
TRUNCATE TABLE book;

-- J.K. Rowling
insert into book (book_id, title, image_url, author_id) VALUES (1, 'Harry Potter and the Sorcerers Stone', 'https://images-na.ssl-images-amazon.com/images/I/51DF6ZR8G7L._SX329_BO1,204,203,200_.jpg', 1);
insert into book (book_id, title, image_url, author_id) VALUES (2, 'Harry Potter and the Chamber of Secrets', 'https://images-na.ssl-images-amazon.com/images/I/51jNORv6nQL._SX340_BO1,204,203,200_.jpg', 1);
insert into book (book_id, title, image_url, author_id) VALUES (3, 'Harry Potter and the Prisoner of Azkaban', 'https://prodimage.images-bn.com/pimages/9780439136365_p0_v1_s1200x630.jpg', 1);
insert into book (book_id, title, image_url, author_id) VALUES (4, 'Harry Potter and the Goblet of Fire', 'https://images-na.ssl-images-amazon.com/images/I/71ykU-RQ0nL._AC_SY741_.jpg', 1);
insert into book (book_id, title, image_url, author_id) VALUES (5, 'Harry Potter and the Order of the Pheonix', 'https://prodimage.images-bn.com/pimages/9780439358071_p0_v4_s1200x630.jpg', 1);
insert into book (book_id, title, image_url, author_id) VALUES (6, 'Harry Potter and the Half Blood Prince', 'https://external-preview.redd.it/3aWfDvhvVFoQJwRMQ18t7mYZRGH_Ek7bgUCT3DlMCts.jpg?auto=webp&s=612f31c863dd5e177433d317da1ab89046c61c27', 1);
insert into book (book_id, title, image_url, author_id) VALUES (7, 'Harry Potter and the Deathly Hollows', 'https://images-na.ssl-images-amazon.com/images/I/71sH3vxziLL.jpg', 1);

INSERT INTO book_genres (book_id, genre) values (1, 'Fantasy');
INSERT INTO book_genres (book_id, genre) values (1, 'Fiction');
INSERT INTO book_genres (book_id, genre) values (2, 'Fantasy');
INSERT INTO book_genres (book_id, genre) values (2, 'Fiction');
INSERT INTO book_genres (book_id, genre) values (3, 'Fantasy');
INSERT INTO book_genres (book_id, genre) values (3, 'Fiction');
INSERT INTO book_genres (book_id, genre) values (4, 'Fantasy');
INSERT INTO book_genres (book_id, genre) values (4, 'Fiction');
INSERT INTO book_genres (book_id, genre) values (5, 'Fantasy');
INSERT INTO book_genres (book_id, genre) values (5, 'Fiction');
INSERT INTO book_genres (book_id, genre) values (6, 'Fantasy');
INSERT INTO book_genres (book_id, genre) values (6, 'Fiction');
INSERT INTO book_genres (book_id, genre) values (7, 'Fantasy');
INSERT INTO book_genres (book_id, genre) values (7, 'Fiction');

-- Shakespeare
insert into book (book_id, title, image_url, author_id) VALUES (8, 'A Midsummer Nights Dream', 'https://2.bp.blogspot.com/-cJv2KeYe-9g/Twfn5xtej6I/AAAAAAAAAK8/YHdIWsmkjyg/s1600/a+midsummer+nights+dream.jpg', 2);
insert into book (book_id, title, image_url, author_id) VALUES (9, 'Julius Caesar', 'https://images-na.ssl-images-amazon.com/images/I/91qIhw+g1kL.jpg', 2);
insert into book (book_id, title, image_url, author_id) VALUES (10, 'Hamlet', 'https://images-na.ssl-images-amazon.com/images/I/51IWerpjMGL._SX322_BO1,204,203,200_.jpg', 2);
insert into book (book_id, title, image_url, author_id) VALUES (11, 'Othello', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1459795105l/12996._SY475_.jpg', 2);
insert into book (book_id, title, image_url, author_id) VALUES (12, 'Romeo & Juliet', 'https://i.pinimg.com/originals/c8/7b/0f/c87b0f154ab3b6bf4ef875b97ba392e7.jpg', 2);

INSERT INTO book_genres (book_id, genre) values (8, 'Comedy');
INSERT INTO book_genres (book_id, genre) values (9, 'Tragedy');
INSERT INTO book_genres (book_id, genre) values (10, 'Tragedy');
INSERT INTO book_genres (book_id, genre) values (11, 'Tragedy');
INSERT INTO book_genres (book_id, genre) values (12, 'Tragedy');

-- Hemingway
insert into book (book_id, title, image_url, author_id) VALUES (13, 'The Old Man and the Sea', 'https://images-na.ssl-images-amazon.com/images/I/412WMYR6s6L._SX326_BO1,204,203,200_.jpg', 3);
insert into book (book_id, title, image_url, author_id) VALUES (14, 'The Sun Also Rises', 'https://images-na.ssl-images-amazon.com/images/I/51cj37KTLRL._SX322_BO1,204,203,200_.jpg', 3);

INSERT INTO book_genres (book_id, genre) VALUES (13, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (14, 'Historic Fiction');

-- Twain
INSERT INTO book (book_id, title, image_url, author_id) VALUES (15, 'Adventures of Huckleberry Finn', 'https://prodimage.images-bn.com/pimages/9781454937142_p0_v1_s1200x630.jpg', 4);
INSERT INTO book (book_id, title, image_url, author_id) VALUES (16, 'Adventures of Tom Sawyer', 'https://images-na.ssl-images-amazon.com/images/I/51DbxHs00VL._SX331_BO1,204,203,200_.jpg', 4);

INSERT INTO book_genres (book_id, genre) VALUES (15, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (16, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (16, 'Satire');

-- Orwell
INSERT INTO book (book_id, title, image_url, author_id) VALUES (17, '1984', 'https://prodimage.images-bn.com/pimages/9780451524935_p0_v5_s550x406.jpg', 5);
INSERT INTO book (book_id, title, image_url, author_id) VALUES (18, 'Animal Farm', 'https://i.pinimg.com/originals/b3/d1/76/b3d176e6609ce020b2a586ecace8af48.jpg', 5);

INSERT INTO book_genres (book_id, genre) VALUES (17, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (17, 'Satire');
INSERT INTO book_genres (book_id, genre) VALUES (18, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (18, 'Science Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (18, 'Dystopian Fiction');

-- Steinbeck
INSERT INTO book (book_id, title, image_url, author_id) VALUES (19, 'Of Mice and Men', 'https://booksontrial.com/images/of-mice-and-men/of-mice-and-men-cover.jpg', 6);
INSERT INTO book (book_id, title, image_url, author_id) VALUES (20, 'The Grapes of Wrath', 'https://pictures.abebooks.com/JIMDOURGARIAN/5135514129.jpg', 6);

INSERT INTO book_genres (book_id, genre) VALUES (19, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (20, 'Fiction');


-- Silverstein
INSERT INTO book (book_id, title, image_url, author_id) VALUES (21, 'Falling Up', 'https://prodimage.images-bn.com/pimages/9780060248024_p0_v4_s550x406.jpg', 7);
INSERT INTO book (book_id, title, image_url, author_id) VALUES (22, 'Where the Sidewalk Ends', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/8461/9781846143847.jpg', 7);

INSERT INTO book_genres (book_id, genre) VALUES (21, 'Poetry');
INSERT INTO book_genres (book_id, genre) VALUES (22, 'Poetry');

-- Carroll
INSERT INTO book (book_id, title, image_url, author_id) VALUES (24, 'The Game of Logic', 'https://images-na.ssl-images-amazon.com/images/I/41iVIYXOvlL._SX331_BO1,204,203,200_.jpg', 8);
INSERT INTO book (book_id, title, image_url, author_id) VALUES (25, 'Alices Adventures in Wonderland', 'https://images-na.ssl-images-amazon.com/images/I/61UqdLNZ2+L._SX338_BO1,204,203,200_.jpg', 8);

INSERT INTO book_genres (book_id, genre) VALUES (24, 'Logic');
INSERT INTO book_genres (book_id, genre) VALUES (25, 'Fantasy');
INSERT INTO book_genres (book_id, genre) VALUES (25, 'Fiction');

-- Poe
INSERT INTO book (book_id, title, image_url, author_id) VALUES (26, 'The Raven', 'https://images-na.ssl-images-amazon.com/images/I/314q6A3jCNL._SX331_BO1,204,203,200_.jpg', 9);
INSERT INTO book (book_id, title, image_url, author_id) VALUES (27, 'The Cask of Amontillado', 'https://m.media-amazon.com/images/I/51i-hp-QaxL.jpg', 9);
INSERT INTO book (book_id, title, image_url, author_id) VALUES (28, 'Annabel Lee', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1425048066l/24245914.jpg', 9);

INSERT INTO book_genres (book_id, genre) VALUES (26, 'Poetry');
INSERT INTO book_genres (book_id, genre) VALUES (26, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (27, 'Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (27, 'Horror');
INSERT INTO book_genres (book_id, genre) VALUES (28, 'Poetry');

-- Sinek
INSERT INTO book (book_id, title, image_url, author_id) VALUES (29, 'Start with Why: How Great Leaders Inspire Everyone to Take Action', 'https://covers.audiobooks.com/images/covers/full/9781469033051.jpg', 10);

INSERT INTO book_genres (book_id, genre) VALUES (29, 'Non Fiction');
INSERT INTO book_genres (book_id, genre) VALUES (29, 'Self Help');
