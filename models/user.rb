def create_user(username, password_digest)
    password_secure = BCrypt::Password.create(password_digest)

    run_sql("INSERT INTO users(username, password_digest ) VALUES($1, $2)", [username, password_secure])
end

def find_user_by_username(username)
    users = run_sql("SELECT * FROM users WHERE username = $1", [username])
    
    # if more than one user, pick the first one, but if no one is found, return nil
    if users.to_a.count > 0
      users[0]
    else
      nil
    end
end

def find_user_by_id(id)
    run_sql("SELECT * FROM users WHERE id = $1", [id])[0]
end
