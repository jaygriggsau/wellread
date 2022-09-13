def run_sql(sql, sql_params = [])
    db = PG.connect(dbname: 'well_read_db')
    results = db.exec_params(sql, sql_params)
    db.close
    results
end