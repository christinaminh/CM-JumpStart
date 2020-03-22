# Ask user for 5 integers between 12 and 21 inclusive
puts "Please provide five integer values between 12 and 21, both inclusive:"
# Create 2 new arrays for random generated numbers and user-inputted numbers
random_values = []
5.times do
 random_values << rand(12..21)
end

puts random_values

input_values = []
5.times do |i|
    puts "What's number #{i+1}?"
    input_values << gets.chomp.to_i
end

# first hash with random numbers (value should be an array of five randomly generated integers between 12 and 21, both inclusive)
# and user inputted numbers (value should be an array of five positive integers that the program receives as user input, also in the range of 12 and 21, both inclusive)
allnumbers = {
    random_numbers: random_values, 
    user_input: input_values
}

# second hash named duplicated is the count of times a number was generated. The keys in this hash are the numbers, either entered by the user or generated randomly by the program.
# The value holds information of: 
# the count of times that the number in key was generated randomly by the program
# and the count of times that the number in key was provided by the user.

duplicated = {}
duplicated.default = {}
count = {}

# count of times is "array.count(value)"
# allnumbers.values returns an array of all the values. All 10 of the numbers
# iterate through each value of the array and determine how many times it was generated and how many times entered by user

allnumbers[:random_numbers].each do |value|
    count[:generated] = random_values.count(value)
    count[:entered] = input_values.count(value)
    duplicated[value] = count
end

allnumbers[:user_input].each do |value|
    count[:generated] = random_values.count(value)
    count[:entered] = input_values.count(value)
    duplicated[value] = count
end

3.times do
    puts "Give me a number you want information about:"
    want_info = gets.chomp.to_i

    puts "Using only the first hash:"
    if random_values.count(want_info) == 0
        puts "The number, #{want_info} did not show in the randomly generated numbers."
    else
        puts "The number, #{want_info} shows up #{random_values.count(want_info)} time(s) in the randomly generated numbers."
    end

    if input_values.count(want_info) == 0
        puts "The number, #{want_info} was not provided by the user earlier."
    else
        puts "The number, #{want_info} was provided #{input_values.count(want_info)} time(s) by the user earlier."
    end

    puts "Using only the second hash:"
    if duplicated[want_info] == {}
        puts "The number, #{want_info} did not show in the randomly generated numbers."
    else
        puts "The number, #{want_info} shows up #{duplicated[want_info][:generated]} time(s) in the randomly generated numbers."
    end

    if duplicated[want_info] == {}
        puts "The number, #{want_info} was not provided by the user earlier."
    else
        puts "The number, #{want_info} was provided #{duplicated[want_info][:entered]} time(s) by the user earlier."
    end
end 