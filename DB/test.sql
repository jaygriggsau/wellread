SELECT stats.*, books.title, books.author, books.image_url FROM books
INNER JOIN stats
ON stats.books_id = books.id
ORDER BY id DESC;