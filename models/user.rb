def create_user(username, password_digest)
    run_sql("INSERT INTO users(username, password_digest ) VALUES($1, $2)", [username, password_digest])
end