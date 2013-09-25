puts "how old are you?"
age = gets.chomp
puts "do you ever plan on having children? yes/no"
child_plans = gets.chomp
puts "what are the names of your children?" if child_plans == "yes"
children_names = gets.chomp if child_plans == "yes"
puts "are you married? yes/no" if age.to_i > 30
marital_status = gets.chomp if age.to_i > 30
puts "do you ever plan on getting married?" if marital_status == "no"