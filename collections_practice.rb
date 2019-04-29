require "pry"

keys =  [
        {
            :first_name => "blake",
                 :motto => "Have a koala-ty day!"
        },
        {
            :first_name => "ashley",
                 :motto => "I dub thee, 'Lady Brett Ashley'."
        }
    ]
data = [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]

merged_data = [
        {
             :first_name => "blake",
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson",
                  :motto => "Have a koala-ty day!"

        },
        {
             :first_name => "ashley",
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs",
                  :motto => "I dub thee, 'Lady Brett Ashley'."

        }
    ]

cool = [
            {
                   :name => "ashley",
            :temperature => "sort of cool"
        },
            {
                   :name => "blake",
            :temperature => "cool"
        }
    ]

schools = {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }

organized_schools =
    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
     "SF"=>["dev boot camp", "Hack Reactor"],
     "Chicago"=>["dev boot camp chicago"]}


def begins_with_r(arr)
  arr.all?{|item| item[0].downcase == "r"}
end

puts begins_with_r(["ruby", "rspec", "rails"])
puts "Should be true."
puts begins_with_r(["ruby", "rspec", "sails"])
puts "Should be false"

def contain_a(arr)
  arr.select{|item| item.downcase.include?("a")}
end

puts
puts contain_a(["earth", "fire", "wind", "water", "heart"]).inspect
puts "Should be ['earth', 'water', 'heart']"

def first_wa(arr)
  arr.each{|item| return item.to_s if item.to_s.downcase[0..1]=="wa"}
end

puts
puts first_wa(["candy", :pepper, "wall", :ball, "wacky"])
puts "Should be wall."

def remove_non_strings(arr)
  arr.select{|item| item.class == String}
end

puts
puts remove_non_strings(["blake", 1, :hello]).inspect
puts "Should be ['blake']"

def count_elements(arr)
  new_arr = arr.uniq
  new_arr.each do |item|
    item[:count] = arr.count(item)
  end
  new_arr
  #names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
  # counts = Hash.new(0)
  # names.each { |name| counts[name] += 1 }
end

puts
puts count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]).inspect
puts "Should be [{:name => 'blake', :count => 2}, {:name => 'ashley', :count => 1}]"

def merge_data(keys, data)
  # keys.each{|item| item[:first_name]}
  new_arr = []
  keys.each do |item|
    new_arr << item.merge(data[0][item[:first_name]])
  end
  new_arr
end

puts
puts merge_data(keys, data)
puts "Should be: "
puts merged_data

def find_cool(arr)
  arr.select{|item| item[:temperature] == "cool"}
end

puts
puts find_cool(cool)
puts "Should be [{:name => 'blake',:temperature => 'cool'}]"

def organize_schools(schools)
  schools.values.uniq.map do |item|
    {item[:location] => schools.select{|school,loc| loc[:location] == item[:location]}.keys}
  end.sort_by{|key, value| key}
end

puts
puts organize_schools(schools)
puts "Should be: "
puts organized_schools
