Read the code in each section, then write exactly what the code prints out.
Each problem stands alone. Variables from previous problems do not exist.
Example:
x = 5
y = 6
print(x+y)
# => 11
Problem Set
 
cars = ["old", "new", "used"]
cars.each do |car|
  puts car
end
Old
New
Used
 
 
fruits = ["banana", "apple", "kiwi"]
fruits.each do |fruit|
  puts "I love " + fruit + "!"
end
I love banana!
I love apple!
I love kiwi!
 
 
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  puts value
End
8
5
3
10
14
2
 

total = 0
values = [4, 6, 2, 8, 11]

values.each do |value|
    total = total + value
end

puts total
31

#Values      Total       Output
#4           4           -
#6           10          -
#2           12          -
#8           20          -
#11          31          -
 
 
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  if value == 10
    puts "Special case!"
  else
    puts "Regular values like #{value}"
  end
end
Regular values like 8
Regular values like 5
Regular values like 3
Special case!
Regular values like 14
Regular values like 2

#Values  value == 10 Output
#8       False       Regular values like 8
#5       False       Regular values like 5
#3       False       Regular values like 3
#10      True        Special case!
#14      False       Regular values like 14
#2       False       Regular values like 2
 

