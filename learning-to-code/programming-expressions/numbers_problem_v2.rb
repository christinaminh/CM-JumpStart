# ask user to input an integer
puts "This program will ask you to enter numbers 
and share if the number is less than 20."
print "Enter the 1st number:"
# assigns user input to variable named user_input
user_input = gets.chomp.to_i
# If the number is greater than or equal to 20, 
# display a message to share so and a different message otherwise.
if user_input >= 20
    puts "#{user_input} is greater than or equal to 20."
else
    puts "#{user_input} is less than 20."
end
print "Enter the 2nd number:"
# assigns user input to variable named user_input
user_input = gets.chomp.to_i
# If the number is greater than or equal to 20, 
# display a message to share so and a different message otherwise.
if user_input >= 20
    puts "#{user_input} is greater than or equal to 20."
else
    puts "#{user_input} is less than 20."
end
print "Enter the 3rd number:"
# assigns user input to variable named user_input
user_input = gets.chomp.to_i
# If the number is greater than or equal to 20, 
# display a message to share so and a different message otherwise.
if user_input >= 20
    puts "#{user_input} is greater than or equal to 20."
else
    puts "#{user_input} is less than 20."
end