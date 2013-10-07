require 'sinatra'
require 'sinatra/reloader' if development?

compliments = [
  "Your instructors love you",
  "That's a really nice e-cigarette",
  "Is it Ruby Tuesday yet?",
  "You are awesome.upcase",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party",
  "(1..1_000_000).to_a.include?(you) == true"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
	@compliment = compliments.sample
	@color = colors.sample

	erb :compliment
end

get '/:name' do
	@name = params[:name]
	@compliment = compliments.sample
	@color = colors.sample

	erb :compliment
end