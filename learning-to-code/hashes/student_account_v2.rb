# An array that will contain student names
names = []
# An array that will store student ID numbers
studentIDs = []
# An array that will contain student email addresses
emails = []
# Read student names (first and last name) from a file
# and store those values in the first array in all uppercase
File.foreach("Students.txt") {|name|
name = name.upcase
names << name
#Write a times loop to generate random student ID numbers from 111111 to 999999 
#and put these values to the student ID number array.
studentID = "#{rand(111111..999999)}"
studentIDs.each do |i|
    if studentID == i
        studentID = "#{rand(111111..999999)}"
    else
    end
 end
studentIDs << studentID
# Write a times loop to generate student email addresses in the format: 
# (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
firstname = (name.split).first
lastname = (name.split).last
if (name.split).length >= 3
    secondname = name.split[1].slice(0)
else
    secondname = ''
end
email = firstname.slice(0) + secondname + lastname + studentID.slice(3..5) + "@adadevelopersacademy.org"
emails << email
#Write the code which will print out all the student names, ID numbers, and email addresses in parallel.
puts "Student Name: #{name}"
puts "Student ID: #{studentID}"
puts "Student E-mail #{email}"}
