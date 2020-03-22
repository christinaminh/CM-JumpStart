puts "Let's play a numbers game. How many numbers would you like to enter?"
count = gets.chomp.to_i
i = 0
until i == count
    print "Enter positive integer ##{i+1}: "
    user_input = gets.chomp.to_i
    if (user_input % 3) == 0
        puts "#{user_input} is divisible by 3."
    else
        puts "#{user_input} is not divisible by 3."
    end
    i = i + 1
end
