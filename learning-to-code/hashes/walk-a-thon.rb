# A walk-a-thon program that accepts the following input from the user:
# Read in earning goal for the walk-a-thon
puts "Enter earning goal for the walk-a-thon: "
goal = gets.chomp.to_i

# Read in amount earned per lap completed (per person)
puts "Enter amount earned per lap completed (per person): "
amount_earned_per_lap = gets.chomp.to_f

# Read in number of laps completed for 5 people
puts "Enter number of laps completed by each person."

participant_data = {}

5.times do |i|
    i += 1
    print "Walker ##{i}: "
    participant_data[i] = gets.chomp.to_i
    amount_earned_per_person = participant_data[i] * amount_earned_per_lap
    puts "Earned $#{'%.2f'%amount_earned_per_person}"
end

# Output who earned the most money
# The participant who earned the most is the person who walked the most
sorted_by_lap = participant_data.sort_by {|participant, laps_per_person| laps_per_person} # returns an array of arrays of key value pairs

highest_earning_walker = sorted_by_lap[-1][0]
puts "Highest Earning Walker: ##{highest_earning_walker}"

# Total amount earned in the walk-a-thon
# total_earned = amount_earned * laps_per_person
laps_per_person = participant_data.values
total_earned = 0.00
laps_per_person.each do |laps|
    total_earned += (amount_earned_per_lap * laps)
end

puts "Total Amount Earned: $#{'%.2f'%total_earned}"

# Output whether or not the earning goal was met
if total_earned >= goal
    puts "Goal Met? YES"
else
    puts "Goal Met? NO"
    earned_short_by = goal - total_earned
    puts "The goal was missed by $#{'%0.2f'%earned_short_by}"
end