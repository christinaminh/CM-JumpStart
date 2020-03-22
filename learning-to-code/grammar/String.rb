# problem 1
my_string = "I love Seattle"
my_string.slice(7)
“S”

# problem 2
my_string = "I love Seattle"
my_string.slice(2, 4)
“love”

# problem 3
my_string = "I love Seattle"
my_string.slice("Seattle")
“Seattle

# problem 4
my_string = "Ada"
my_string += " Lovelace"
“Ada Lovelace”

# problem 5
my_string = "Ada"
my_string << " codes" << " it!"
“Ada codes it!”

# problem 6
my_string = "Ada"
my_string.concat(" likes to code").slice(4...9)
“Likes”

# problem 7
my_string = "Hello world"
"Goodbye " + my_string.slice(6, 5) << "!"
“Goodbye world!”

# problem 8
my_string = "Hello world!"
my_string.slice(0...5).concat(", goodbye!")
“Hello, goodbye!”

# problem 9
my_string = "Hello world!"
my_string.slice(0) << "i" + "!"
“Hi!”

# problem 10
my_string = "I love Ruby"
my_string.slice(7, 4).concat(my_string.slice(2..5)) + my_string.slice(0)
“RubyloveI”

# problem 11
my_string = "I love Ruby"
my_string.slice(7, 4).concat(my_string.slice(2...6)) + my_string.slice(0)
“RubyloveI”

# problem 12
my_string = "I love Ruby"
"R".concat(my_string.slice(8, 3) + " rocks!")
“Ruby rocks!”

# problem 13
my_string = "I love Ruby"
my_string.slice(2, 4) << my_string.slice(7...11).concat(my_string.slice(2...6))
“loveRubylove”
