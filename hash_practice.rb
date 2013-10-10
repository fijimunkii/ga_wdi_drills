require 'httparty'
require 'json'
require 'pp'

## NOT SO SMALL ANYMORE... the actual small json https://raw.github.com/ga-students/WDI_NYC_Hash/master/week_03/d03/json_files/fb_small.json?login=jonleung&token=00d9d6609b67c15327252f90dd5971dd
small = HTTParty.get('https://raw.github.com/ga-students/WDI_NYC_Hash/master/week_03/d03/json_files/fb_large.json?login=jonleung&token=659b7b958127c8e10057ca6769e99f95')

small_json = JSON.parse(small)

pp small_json

male_counter = 0
female_counter = 0
single_female_counter = 0
single_females_in_ny_counter = 0
single_females_in_ny = Hash.new
website_counter = 0
ny_counter = 0

small_json["data"].each do |friend_hash|
  if friend_hash["gender"] == "male"
    male_counter += 1
  elsif friend_hash["gender"] == "female"
    female_counter += 1
    if friend_hash["relationship_status"]
      if friend_hash["relationship_status"] == "Single"
        single_female_counter += 1
        if friend_hash["location"]
            if friend_hash["location"]["name"] == "New York, New York"
              single_females_in_ny_counter += 1
              fb_graph = HTTParty.get("https://graph.facebook.com/#{friend_hash["id"]}")
              single_females_in_ny[fb_graph["name"]] = "http://graph.facebook.com/#{friend_hash["id"]}/picture?type=large"
            end
        end
      end
    end
  end
  if friend_hash.has_key?("website") == true
    website_counter += 1
  end
  if friend_hash["location"]
    if friend_hash["location"]["name"] == "New York, New York"
      ny_counter += 1
    end
  end
end

friends_sorted_by_id = small_json["data"].sort_by { |k| k["id"] }

puts
puts "jonleung's friend who joined facebook first is #{friends_sorted_by_id.first.to_s}"
puts
puts "jonleung's friend who joined facebook last is #{friends_sorted_by_id.last.to_s}"
puts
puts "jonleung has #{website_counter} friends who have websites"
puts
puts "jonleung has #{ny_counter} friends who live in NYC."
puts "jonleung has #{male_counter} guy friends."
puts
puts "jonleung has #{female_counter} girl friends!  #{single_female_counter} are single!  #{single_females_in_ny_counter} are single and live in NYC!!!!!!"
puts
puts "here are their names and pictures :D"
single_females_in_ny.each do |name, picture|
  puts "#{name}  |  #{picture}"
end
puts
puts
