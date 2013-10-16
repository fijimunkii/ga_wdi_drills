require_relative '../quiz'
require "spec_helper"
#  __    __    _______  __    __
# |  |  |  |  /  _____||  |  |  |
# |  |  |  | |  |  __  |  |__|  |
# |  |  |  | |  | |_ | |   __   |
# |  `--'  | |  |__| | |  |  |  |
#  \______/   \______| |__|  |__|

describe "a quiz" do
  it "should be about Ruby and Testing in Rspec" do
    expect(QUIZ_TOPICS).to include("ruby")
    expect(QUIZ_TOPICS).to include("rspec")
    expect(QUIZ_TOPICS).to include("testing")
  end
end

describe "question 1" do
  it "has an add method" do
    quiz = Quiz.new
    quiz.add(5)
    expect(quiz.numbers).to eq("5")
  end
end

describe "question 2" do
  it "should return a string of numbers" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(3)
    quiz.numbers
    expect(quiz.numbers).to eq("5, 3")
  end
end

describe "question 3" do
  it "should only add numbers" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(3)
    quiz.add("7")
    expect(quiz.numbers).to eq("5, 3")
  end
end

describe "question 4" do
  it "or arrays of numbers" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add(3)
    quiz.add([4, 2, true, 9])
    expect(quiz.numbers).to eq("5, 3, 4, 2, 9")
  end
end

describe "question 5" do
  it "we can't access the array directly" do
    quiz = Quiz.new
    expect{ quiz.push(5) }.to raise_error
  end
end

describe "question 6" do
  it "trash returns anything we've tried to add that's not a number" do
    quiz = Quiz.new
    quiz.add(5)
    quiz.add("5")
    expect(quiz.trash).to eq(["5"])
  end
end

describe "question 7" do
  it "describe the number of occurences of a specified number" do
    quiz = Quiz.new
    quiz.add([5,3,4,3])
    expect(quiz.count(3)).to eq(2)
  end
end

describe "question 8" do
  it "takes a specified length of an array starting from the left and moves it to the tail end" do
    quiz = Quiz.new
    quiz.add([5,4,3,2,1])
    quiz.rotate(2)
    expect(quiz.numbers).to eq("3, 2, 1, 5, 4")
  end
end

describe "question 9" do
  it "prints out the number of even numbers in the array" do
    quiz = Quiz.new
    quiz.add([5,4,3,2,1])
    expect(quiz.count_events).to eq(2)
  end
end


