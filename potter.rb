require 'pg'

hp_db = PG.connect(:dbname => 'hp_db', :host => 'localhost')

sql = "select * from students"

results = hp_db.exec(sql)

p results.entries

sql = "select * from students where id = 1"

results = hp_db.exec(sql)

p results.entries
