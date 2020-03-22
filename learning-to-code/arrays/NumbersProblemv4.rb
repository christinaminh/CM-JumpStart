puts "Let's play a numbers game. How many numbers would you like to enter?"
count = gets.chomp.to_i
numbers = Array.new
user_input = 0
count.times do |i|
    print "Enter positive integer ##{i+1}: "
    user_input = gets.chomp.to_i
    numbers.push(user_input)
end
puts "Comparing to the last value entered, #{user_input}, here are the observations:"

numbers.length.times do |i|
    if numbers[i] < numbers.last
        puts "The value at index #{i}, #{numbers[i]} is less than the value at the last index, #{numbers.last}."
    elsif numbers[i] > numbers.last
        puts "The value at index #{i}, #{numbers[i]} is greater than the value at the last index, #{numbers.last}."
    else
        puts "The value at index #{i}, #{numbers[i]} is equal to the value at the last index, #{numbers.last}."
    end
end

puts "The minimum value in the array is #{numbers.sort.first}
The maximum value in the array is #{numbers.sort.last}
The average of all the values in the array is #{numbers.sum / numbers.length}"