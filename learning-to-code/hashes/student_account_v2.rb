# # An array that will contain student names
# names = []
# # An array that will store student ID numbers
# studentIDs = []
# # An array that will contain student email addresses
# emails = []

student_data = []


# Read student names (first and last name) from a file
# and store those values in the first array in all uppercase
5.times do |student|
    student_data[student] = Hash.new
    
    puts "Enter a student name (first and last only) to generate a new student account."
    name = gets.chomp.upcase
    student_data[student][:name] = name

    #Generate random student ID numbers from 111111 to 999999 
    #and put these values to the student ID number array.
    studentIDs = []
    studentID = "#{rand(111111..999999)}"
    until !studentIDs.include?(studentID)
        studentID = "#{rand(111111..999999)}" 
    end

    studentIDs << studentID

    student_data[student][:studentID] = studentID

    # Generate student email addresses in the format: 
    # (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
    firstname = (name.split).first
    lastname = (name.split).last
    if (name.split).length >= 3
        secondname = name.split[1].slice(0)
    else
        secondname = ''
    end
    email = firstname.slice(0) + secondname + lastname + studentID.slice(3..5) + "@adadevelopersacademy.org"
    student_data[student][:email] = email
end
#Write the code which will print out all the student names, ID numbers, and email addresses in parallel.
puts student_data