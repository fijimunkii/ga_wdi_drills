classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

classmates_strings.map! { |string| string.gsub(',', '|') }

p classmates_strings

# GOTTA P IT OUT!!

favorite_foods = classmates_strings.map do |student_string|
  student_array = student_string.split('|')
  "#{student_array.first}'s favorite food is #{student_array[1]}"
end

p favorite_foods

classmates_strings.each do |student_string|
  student_array = student_string.split('|')
  puts '<ul>'
  puts "<li>#{student_array.first}</li>"
  puts "<li>#{student_array[1]}</li>"
  puts "<li>#{student_array[2]}</li>"
  puts '</ul>'
end
