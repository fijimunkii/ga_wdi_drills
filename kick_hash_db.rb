require 'pg'

db_connect = PG.connect(:dbname => 'kick_hash_db', :host => 'localhost')

sql = 'SELECT * FROM users ORDER BY fav_food ASC'

results = db_connect.exec(sql)

users = results.entries

users.each do |student|
  puts '<ul>'
  puts "<li>#{student['name']}</li>"
  puts "<li>#{student['fav_food']}</li>"
  puts "<li>#{student['github']}</li>"
  puts '</ul>'
end
