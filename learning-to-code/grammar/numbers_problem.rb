# ask the user to input a positive integer
puts "Enter a positive integer."
# user input is assigned to variable user_input and converted to an int
user_input1 = gets.to_i
# ask the user to input second positive integer
puts "Enter another positive integer."
# user input is assigned to variable user_input2 and converted to int
user_input2 = gets.to_i
# ask the user to input third positive integer
puts "Enter another positive integer."
# user input is assigned to variable user_input3 and converted to int
user_input3 = gets.to_i
puts "Twenty added to the numbers you entered gives us #{user_input1 + 20}, #{user_input2 + 20}, and #{user_input3 + 20}."