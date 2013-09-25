puts "how old are you?"
age = gets.chomp
puts "do you ever plan on having children? yes/no"
child_plans = gets.chomp
if child_plans = "yes"
	puts "what are the names of your children?"
	children_names = gets.chomp
end
if age.to_i > 30
	puts "are you married? yes/no"
	marital_status = gets.chomp
	if marital_status = "no"
		puts "do you ever plan on getting married?"
	end
end