users = [
  { :name => "Peter",
    :github => "peterylai",
    :favorite_numbers => [12, 42, 75]
  },
  { :name => "PJ",
    :github => "h4w5",
    :favorite_numbers => [8, 12, 24]
  },
  { :name => "Jeff",
    :github => "jkonowitch",
    :favorite_numbers => [12, 14, 85]
  }
]

puts '1'
p users[2][:github]
puts
puts '2'
users[1][:favorite_numbers] << 7
p users[1][:favorite_numbers]
puts
puts '3'
users << { :name => 'Harrison', :github => 'fijimunkii', :favorite_numbers => [555, 420]}
p users[3]
puts
puts '4'
# users.delete(users[1])
# p users
puts 'this question messes up the others'
puts
puts '5'
users[1] = nil
p users
puts
puts '6'
return users[0][:favorite_numbers]
puts
puts '7'
return users[2][:favorite_numbers].min
puts
puts '8'
users[0][:favorite_numbers][0] = '12'

#########

pjs_fav_even_nums = Array.new
users[1][:favorite_numbers].each do |x|
  pjs_fav_even_nums << x if x.is_even? == true
end

##########

common_favs = Array.new
users[0][:favorite_numbers].each do |x|
  common_favs << x
end
users[1][:favorite_numbers].each do |x|
  common_favs << x
end
users[2][:favorite_numbers].each do |x|
  common_favs << x
end
common_favs = common_favs.uniq

###########

common_favs.sort!


