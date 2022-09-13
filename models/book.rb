def all_books 
    run_sql("SELECT * FROM books ORDER BY id")
end

def create_food(title, author, image_url)
    run_sql("INSERT INTO books(title, author, image_url) VALUES($1, $2, $3)", [title, author, image_url])
end

def delete_book(id)
    run_sql("DELETE FROM books WHERE id = $1", [id])
end