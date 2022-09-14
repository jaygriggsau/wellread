def all_books 
    run_sql("SELECT * FROM books ORDER BY id")
end

def create_book(title, author, image_url)
    run_sql("INSERT INTO books(title, author, image_url) VALUES($1, $2, $3)", [title, author, image_url])
end

def delete_book(id)
    run_sql("DELETE FROM books WHERE id = $1", [id])
end

def update_book(id, title, author, image_url)
    run_sql("UPDATE books SET  title = $2, author = $3, image_url = $4 WHERE id = $1",[id, title, author, image_url])
end

def get_reccomended_book()

    run_sql("SELECT stats.*, books.title, books.author, books.image_url FROM books
        INNER JOIN stats
        ON stats.books_id = books.id
        ORDER BY id DESC")
    
end