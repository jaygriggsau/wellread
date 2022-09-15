SELECT stats.*, books.title, books.author, books.image_url FROM books
INNER JOIN stats
ON stats.books_id = books.id
INNER JOIN stats
ON stats.books_id = books.id
ORDER BY id DESC;

-- SELECT title, author, image_url
-- FROM books AS oc
--    INNER JOIN
--    users AS o
--    ON oc.id = o.id
--    INNER JOIN
--    stats AS s
--    ON o.Id = s.Id;

SELECT title, author, image_url
FROM books AS oc 
   INNER JOIN
   users AS o 
   ON oc.id = o.id 
   INNER JOIN
   stats AS s
   ON oc.id = s.userid; 

