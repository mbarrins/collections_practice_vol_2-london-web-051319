def begins_with_r(arr)
  arr.all?{|item| item[0].downcase == "r"}
end

def contain_a(arr)
  arr.select{|item| item.downcase.include?("a")}
end

def first_wa(arr)
  arr.each{|item| return item.to_s if item.to_s.downcase[0..1]=="wa"}
end

def remove_non_strings(arr)
  arr.select{|item| item.class == String}
end

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

def organize_schools(schools)
  schools.values.uniq.sort_by{|k,v| v}.map do |item|
    [item[:location], schools.select{|school,loc| loc[:location] == item[:location]}.keys]
  end.to_h
end

puts
puts organize_schools(schools)
puts "Should be: "
puts organized_schools
