puts "Welcome to Ada Developers Academy's Computer Candy Machine!
(All candy provided is virtual.)

How much money do you have? (Don't include \"$\")"
user_money = gets.chomp.to_f
puts "$#{'%.2f' % user_money}, that's all?
Well, lemme tell ya what we got here.

A $0.65 Twix
B $0.50 Chips
C $0.75 Nutter Butter
D $0.65 Peanut Butter Cup
E $0.55 Juicy Fruit Gum

So, what'll ya have?"

user_choice = gets.chomp.upcase
if user_choice == "A" && user_money >= 0.65
    print "Thanks for purchasing candy through us.
    Please take your candy, and your $#{user_money-0.65} change!"
elsif user_choice == "B" && user_money >= 0.50
    print "Thanks for purchasing candy through us.
    Please take your candy, and your $#{user_money-0.50} change!"
elsif user_choice == "C" && user_money >= 0.75
    print "Thanks for purchasing candy through us.
    Please take your candy, and your $#{user_money-0.75} change!"
elsif user_choice == "D" && user_money >= 0.65
    print "Thanks for purchasing candy through us.
    Please take your candy, and your $#{user_money-0.65} change!"
elsif user_choice == "E" && user_money >= 0.55
    print "Thanks for purchasing candy through us.
    Please take your candy, and your $#{user_money-0.55} change!"
elsif user_choice != ("A" || "B" || "C" || "D" )
    print "Sorry, we don't have that here. Go elsewhere"
else
    print "You're broke. Take your $#{user_money} and go elsewhere."
end