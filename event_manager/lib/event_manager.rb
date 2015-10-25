
# 1. Simple way to list file content

# contents = File.read "event_attendees.csv"
# puts contents


# 2. Another one

#lines = File.readlines "event_attendees.csv"
#lines.each do |line|
#    puts line
#end

# 3. Ruby’s String#split allows you to convert a string of text into an Array along a particular character.
=begin 

lines = File.readlines "event_attendees.csv" 
lines.each do |line|
    columns = line.split(",")
    # Within our array of columns we want to access our ‘first_Name’. This would be the third column or column at the array’s second element columns[2].
    name = columns[2]
    puts  name
end

=end


# 4. This solves the problem if the header row were to change in the future. 

=begin 

lines = File.readlines "event_attendees.csv"
lines.each_with_index do |line,index|
  next if index == 0
  columns = line.split(",")
  name = columns[2]
  puts name
end

5. Switching over to use the CSV Library

  


require "csv"
puts "EventManager initialized."

contents = CSV.open "event_attendees.csv", headers: true
contents.each do |row|
    name = row[2]
    puts name

end


6. Accessing Columns by their Names



require "csv"
puts "EventManager initialized."

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
    name = row[:first_name]
    puts name
end

7. Displaying the Zip Codes of All Attendees

=end


require "csv"
puts "EventManager initialized."

contents = CSV.open "event_attendees.csv", headers: true,
header_converters: :symbol
contents.each do |row|
    name = row[:first_name]
    zipcode = row[:zipcode]
    puts "#{name} #{zipcode}"
end












