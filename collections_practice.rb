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
