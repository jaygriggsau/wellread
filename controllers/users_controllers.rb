require './models/user'

get '/users/new_user' do
    erb :'users/new_user'
end

post '/users/add_user' do
    username = params['username']
    password_digest = params['password_digest']
  
    create_user(username, password_digest) 
    redirect '/'
  end