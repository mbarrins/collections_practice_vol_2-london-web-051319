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

def contain_a(arr)
  arr.select{|item| item.downcase.include?("a")}
end

def first_wa(arr)
  arr.find{|item| item.to_s.downcase[0..1]=="wa"}
end

def remove_non_strings(arr)
  arr.select{|item| item.class == String}
end

def count_elements(arr)
  arr.uniq.map{|item| item.merge({:count => arr.count(item)})}
end

def merge_data(keys, data)
  keys.map{|item| item.merge(data[0][item[:first_name]])}
end

def find_cool(arr)
  arr.select{|item| item[:temperature] == "cool"}
end

def organize_schools(schools)
  schools.values.uniq.map do |item|
    [item[:location], schools.select{|school,loc| loc[:location] == item[:location]}.keys]
  end.to_h
end
