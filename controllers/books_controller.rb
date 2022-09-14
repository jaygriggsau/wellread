require './models/book'

get '/' do
    book_index = run_sql("SELECT * FROM books") # move to models
    rec_index = get_reccomended_book()#shows reading list books

    # insert code to get user details to dsipaly name on index page
    
    erb :index, locals:{
        book_index: book_index,
        rec_index: rec_index
    }
end

get '/books/add_book' do
    erb :'books/add_book'
end

post '/new_book' do # add sql for adding a new book into here
    title = params['title']
    author = params['author']
    image_url = params['image_url']
    #run sql code to add book to data base
    create_book(title, author, image_url)
    redirect '/'
end

delete '/books/:id' do
    id = params['id']
    delete_book(id)
    redirect '/'
end

get '/books/:id/edit_book/' do
    id = params['id']
    book = run_sql("SELECT * FROM books WHERE id = $1", [id])[0] # move to models
    
    erb :'books/edit_book', locals:{
        book: book
    }
  end

  put '/books/:id' do
    id = params['id']
    title = params['title']
    author = params['author']
    image_url = params['image_url']

    update_book(id, title, author, image_url)
    redirect '/'

  end

  post '/books/:id/add_to_read' do ## currently working on getting user id passed into this table.
    book_id = params['id']
    user_id = session['user_id']
    run_sql("INSERT INTO stats(books_id, userid, want_to_read) VALUES($1, $2, $3)", [book_id, book_id, true])
    redirect '/'
  end