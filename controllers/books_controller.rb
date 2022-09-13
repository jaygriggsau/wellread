require './models/book'

get '/' do
    book_index = run_sql("SELECT * FROM books")
    erb :index, locals:{
        book_index: book_index
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
    create_food(title, author, image_url)
    redirect '/'
end

delete '/books/:id' do
    id = params['id']
    run_sql("DELETE FROM books WHERE id = $1", [id])
    redirect '/'
end