# Ask user for 5 integers between 12 and 21 inclusive

# Store list of random generated numbers and user-inputted numbers
all_random_values = Array.new(5) { |i| rand(12..21) }



all_input_values = []

puts "Please provide five integer values between 12 and 21, both inclusive:"
5.times do |i|
    print "What's number #{i+1}?: "
    all_input_values << gets.chomp.to_i
end

puts "Randomly generated values: #{all_random_values}"
puts "User inputted values: #{all_input_values}"

# first hash with random numbers 
# (value should be an array of five randomly generated integers between 12 and 21, both inclusive)
# and user inputted numbers 
# (value should be an array of five positive integers that the program receives as user input, 
#  also in the range of 12 and 21, both inclusive)

all_numbers = {
    random_numbers: all_random_values, 
    user_input: all_input_values
}

# second hash named common_numbers is how many times a number was generated. 
# The keys in this hash are the numbers, either entered by the user or generated randomly by the program.
# The value holds information of: 
# the number of times that the number in key was generated randomly by the program
# and the number of times that the number in key was provided by the user.

common_numbers = {}

# iterate through each value of the array and determine how many times it was generated and how many times entered by user


all_random_values.each do |random_value|
    if common_numbers[random_value] == nil

    common_numbers[random_value] = {
        random_frequency: 1,
        input_frequency: 0
    }

    else
        common_numbers[random_value][:random_frequency] += 1
    end
end


all_input_values.each do |input_value|
    if common_numbers[input_value] == nil
    common_numbers[input_value] = {
        random_frequency: 0,
        input_frequency: 1
    }
    else
        common_numbers[input_value][:input_frequency] += 1
    end
end


3.times do
    puts "Give me a number you want information about:"
    number_requested = gets.chomp.to_i

    puts "Using only the first hash:"
    freq_of_req_num_in_rand = all_random_values.count(number_requested)
    if all_random_values.count(number_requested) == 0
        puts "The number, #{number_requested}, did not show in the randomly generated numbers."
    else
        puts "The number, #{number_requested}, shows up #{freq_of_req_num_in_rand} time(s) in the randomly generated numbers."
    end

    freq_of_req_num_in_user_input = all_input_values.count(number_requested)
    if all_input_values.count(number_requested) == 0
        puts "The number, #{number_requested}, was not provided by the user earlier."
    else
        puts "The number, #{number_requested}, was provided #{freq_of_req_num_in_user_input} time(s) by the user earlier."
    end

    puts "Using only the second hash:"
    if common_numbers[number_requested] == nil || common_numbers[number_requested][:random_frequency] == 0 
        puts "The number, #{number_requested}, did not show in the randomly generated numbers."
    else
        puts "The number, #{number_requested}, shows up #{common_numbers[number_requested][:random_frequency]} time(s) in the randomly generated numbers."
    end

    if common_numbers[number_requested] == nil || common_numbers[number_requested][:input_frequency] == 0
        puts "The number, #{number_requested}, was not provided by the user earlier."
    else
        puts "The number, #{number_requested}, was provided #{common_numbers[number_requested][:input_frequency]} time(s) by the user earlier."
    end
end 