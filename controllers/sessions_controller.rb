get '/sessions/new' do
    erb :'sessions/new_session'
  end

post '/sessions/new_session' do
    username = params['username']
    password = params['password']
  
    user = find_user_by_username(username)
  
    if user && BCrypt::Password.new(user['password_digest']) == password
      # log the user in if password matches
      session['user_id'] = user['id'] #session being declared
  
      redirect '/'
    end
end