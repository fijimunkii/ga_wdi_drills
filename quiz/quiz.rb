require 'pry'
require 'facets'

QUIZ_TOPICS = ["ruby", "rspec", "testing", "arrays", "objects"]

# create a Quiz class.

class Quiz

  def initialize
    @numbers = Array.new
    @trash = Array.new
  end

  def add(number)
    if number.is_a? Integer
      @numbers << number
    elsif number.is_a? Array
      number.each { |n| self.add(n) }
    else
      @trash << number
    end
  end

  def numbers
    @numbers.join(', ')
  end

  def trash
    @trash
  end

  def count(num)
    @numbers.frequency[num]
  end

  def rotate(num)
    @numbers.rotate!(num)
  end

  def count_events
    @numbers.select { |num| num.even? }.count
  end

end

# #We can add numbers to it
# quiz = Quiz.new
# quiz.add(5)
# quiz.add(3)

#We can see a string of numbers we've added
# quiz.numbers => "5, 3"

# # We can only add numbers
# quiz.add("7")
# quiz.numbers => "5, 3"

# Or arrays of numbers
# quiz.add([4, 2, true, 9])
# quiz.numbers => "5, 3, 4, 2, 9"

# We can't access the array directly
# quiz.numbers.push(5)
# => undefined method `push'

# Trash returns anything we've tried to add that's not a number.
# quiz.trash => ["7", true]

# Returns the number of occurences of a specified number
# quiz.numbers => "5, 3, 4, 3"
# quiz.count(3) => 2

# Takes a specified length of an array starting from the left and moves it to
# the tail end
# quiz.numbers => "5, 3, 9, 4, 3"
# quiz.rotate(2)
# quiz.numbers => "9, 4, 3, 5, 3"

# Prints out the number of even numbers in the array.
# quiz.numbers => "9, 4, 3, 5, 3"
# quiz.count_events => 1
