puts "Welcome to my election voting program.

Election candidates are: Donald Duck, Minnie Mouse, Goofy"
donald_duck = 0
minnie_mouse = 0
goofy = 0
(1..10).each do |i|
    puts "Voter #{i}, please enter your election vote."
    vote = gets.chomp.downcase
    if vote == "donald duck"
        donald_duck = donald_duck + 1
    elsif vote == "minnie mouse"
        minnie_mouse = minnie_mouse + 1
    elsif vote == "goofy"
        goofy = goofy + 1
    end
end

if donald_duck > (minnie_mouse && goofy)
    winner = "Donald Duck"
elsif minnie_mouse > (donald_duck && goofy)
    winner = "Minnie Mouse"
elsif goofy > (donald_duck && minnie_mouse)
    winner = "Goofy"
end
puts "ELECTION RESULTS....

Vote Summary:
Donald Duck - #{donald_duck} vote(s)
Minnie Mouse - #{minnie_mouse} vote(s)
Goofy - #{goofy} vote(s)

WINNER: #{winner}!"