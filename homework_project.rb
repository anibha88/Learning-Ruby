dial_book={
  "Bangalore" => "080",
  "Baroda" => "0265",
  "Allahabad" => "0532",
  "Calcutta" => "033",
  "Bantwal" => "08255",
  "Chikmaglur" => "08262",
  "Mysore" => "0821",
  "New Delhi" => "011",
  "Madikeri" => "08272",
  "Nagpur" => "0712"
}

# method to display city names
def get_city_names(dial_book)
  # dial_book.each { |k,v| puts k }
  puts dial_book.keys
end

# method to get area code, dial_book and the city name
def get_area_code(dial_book,city_name)
  area_code = dial_book[city_name]
end

loop do 
  puts "Do you want to lookup a city name? (Y/N)"
  answer = gets.chomp

  if answer != "Y"
    break
  end

  puts "Below are the list of cities available in our address book"
  get_city_names(dial_book)

  puts "Please enter the city name for which you want the code"
  city_name = gets.chomp
  area_code = get_area_code(dial_book,city_name)

  puts "Area code of #{city_name} is : #{area_code}"
end
