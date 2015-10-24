puts "EventManager Initialized!"

# 1. Simple way to list file content

# contents = File.read "event_attendees.csv"
# puts contents


# 2. Another one

#lines = File.readlines "event_attendees.csv"
#lines.each do |line|
#    puts line
#end

# 3. Ruby’s String#split allows you to convert a string of text into an Array along a particular character.


lines = File.readlines "event_attendees.csv" 
lines.each do |line|
    columns = line.split(",")
    # Within our array of columns we want to access our ‘first_Name’. This would be the third column or column at the array’s second element columns[2].
    name = columns[2]
    puts  name
end



