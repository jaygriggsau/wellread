SELECT stats.*, books.title, books.author, books.image_url FROM books
INNER JOIN stats
ON stats.books_id = books.id
ORDER BY id DESC;

SELECT stats.*, books.title, books.author, books.image_url FROM books
INNER JOIN stats
ON stats.books_id = books.id
ORDER BY id DESC;

FROM mytable
INNER JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;