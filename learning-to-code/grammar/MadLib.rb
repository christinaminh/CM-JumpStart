# ask user to input an adjective
puts "Let's play a madlib! \nFirst, give me an adjective."
# user input is assigned to variable named adjective1
adjective1 = gets.chomp.downcase
# ask user to input a mammal
puts "Now name a land mammal."
# user input is assigned to variable named mammal
mammal = gets.chomp.downcase
# ask user to input a noun
puts "Now give me plural noun."
# user input is assigned to variable named noun1
noun1= gets.chomp.downcase
# ask user to input a large object
puts "Now give me a large object."
# user input is assigned to variable named noun2
noun2 = gets.chomp.downcase
# ask user to input a second adjective
puts "Now give me another adjective."
# user input is assigned to variable named adjective2
adjective2 = gets.chomp.downcase
# ask user to input a noun
puts "Now give me a noun."
# user input is assigned to variable named noun3
noun3 = gets.chomp.downcase
puts "Lastly, give me a verb ending in -ing."
# user input is assigned to variable named verb
verb = gets.chomp.downcase
puts "Here's your madlib:
There once was a #{adjective1} #{mammal} named, \"Charlie\"
who had a reputation for being snarly,
The other #{mammal}s would drop their #{noun1} and flee.
Whenever he hopped by on all three.
Some #{mammal}s called him \"Ol' peg\"
but none of them knew why he was missing a leg.
Some say he got trapped between two #{noun2}s in a pit!
Others say a #{adjective2} #{noun3} fell on it.
But there was one thing they couldn't deny,
Even with three legs, Charlie was the best at #{verb} on the fly!"
