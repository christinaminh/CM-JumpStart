# An array that will contain student names
names = []
# An array that will store student ID numbers
studentIDs = []
# An array that will contain student email addresses
emails = []
# Write a times loop that asks the user to enter in 5 student names (first and last name) 
# and store those values in the first array in all uppercase
5.times do
    puts "Enter a student name (first and last only) to generate a new student account."
    name = gets.chomp.upcase
    names << name
    # Write a times loop to generate random student ID numbers from 111111 to 999999 
    # and put these values to the student ID number array.
    studentID = "#{rand(111111..999999)}" # making a string accounts for 3 digits that would be less than 100
    studentIDs.each do |i|
        if studentID == i
            studentID = "#{rand(111111..999999)}"
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

end

5.times do |index|
    puts "Student Name: #{names[index]}"
    puts "Student ID: #{studentIDs[index]}"
    puts "Student E-mail: #{emails[index]}"
end