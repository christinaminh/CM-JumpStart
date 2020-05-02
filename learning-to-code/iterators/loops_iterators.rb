Read the code in each section, then write exactly what the code prints out. Use a loop table to help you track each variable for each iteration.
Each problem stands alone. Variables from previous problems do not exist.
Example:
x = 5
y = 6
print(x+y) #=> 11

Problem Set
 
2.times do
  puts "dance"
end
dance
dance 
 
#Count   Output
#1       dance
#2       dance
 
 
 
10.times do |i|
  puts i
end
0
1
2
3
4
5
6
7
8
9
 
#Count   i   Output
#1       0       0
#2       1       1
#3       2       2
#4       3       3
#5       4       4  
#6       5       5
#7       6       6
#8       7       7
#9       8       8
#10      9       9
 
 
 
3.times do
  puts "coding!"
end
puts "fun!"
coding
coding
coding
fun!
 
Count       Output
1       coding!
2       coding!
3       coding!
 
 
5.times do |x|
  puts "#{x} chicken(s)"
end
#0 chicken(s)
#1 chicken(s)
#2 chicken(s)
#3 chicken(s)
#4 chicken(s)
 
Count   x       Output
1       0       0 chicken(s)
2       1       1 chicken(s)
3       2       2 chicken(s)
4       3       3 chicken(s)
5       4       4 chicken(s)
 
 
10.times do |i|
  puts i * i
end
0
1
4
9
16
25
36
49
64
81
 
#Count   i       Output
#1       0       0
#2       1       1
#3       2       4
#4       3       9
#5       4       16
#6       5       25
#7       6       36
#8       7       49
#9       8       64
#10      9       81
 
 
(1..5).each do
  puts "hello!"
end
hello!
hello!
hello!
hello!
hello!
 
#Count   Output
#1       hello!
#2       hello!
#3       hello!
#4       hello!
#5       hello!
 
 
 
(1..3).each do |i|
  puts "#{i} animals(s)"
end
#1 animals
#2 animals
#3 animals
 
 
(1..3).each do |i|
  puts i * i
end
1
4
9
 
 
total = 0

(1..3).each do |i|
  total = total + i
end

puts total
6
The new value of total is NOT scoped to the block.
#Count   i   total   Output
#1       1       0       -
#2       2       1       -
#3       3       3       6
 
 
(1..10).each do |x|
  if x == 5
    puts "You got a winner!"
  end
end
You got a winner!
 
#Count   x       Output
#1       1       -
#2       2       -
#3       3       -
#4       4       -
#5       5       You got a winner!
#6       6       -
#7       7       -
#8       8       -
#9       9       -
#10      10      -
 
 
i = 0

while i < 3
  puts "hi"
  i = i + 1
end
hi
hi
hi
 
#Iteration   i       i < 3       Output
#1           0       True        hi
#2           1       True        hi
#3           2       True        hi
#4           3       False       <None>
 
 
i = 0

while i < 3
  puts "hi"
  i = i + 1
end

puts "bye"
hi
hi
hi
bye
 
#Iteration   i       i < 3       Output
#1           0       True        hi
#2           1       True        hi
#3           2       True        hi
#4           3       False       <None>
 
 
i = 0

while i < 3
  i += 1
  puts i
end
1
2
3
#For iteration/count 1, i=0 before the block is executed. The block is executed IF the condition is satisfied.
#Iteration      i       i < 3       Output
#1              0       True        1
#2              1       True        2
#3              2       True        3
#4              3       False       <None>
 
 
x = 5
i = 0

while i < 3
  x = x + 1
  i = i + 1
end

puts x
8
#Iteration       x       i       i < 3       Output
#1               5       0       True        -
#2               6       1       True        -
#3               7       2       True        -
#4               8       3       False       <None> Don’t execute the block.
 
 
i = 3

while i > 0
  puts "ada!"
  i = i - 1
end
ada!
ada!
ada!
#Iteration   i       i > 0       Output
#1           3       True        “ada!”
#2           2       True        “ada!”
#3           1       True        “ada!”
#4           0       False       <None>
 
 
i = 1

while i
  puts "a while"
end
 
#Count       i      Output
#1           1       a while
#2           2       a while
#3           3       a while
#4           4       a while
#5           5       a while
#...forever
Answer:
infinite loop
 
 
i = 1

while i < 100
  puts "o hai"
  i = i * 100
end
o hai
Iteration       i       i > 0       Output
1               1       True        o hai
2               100     False       <None>

