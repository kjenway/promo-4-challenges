require_relative "wagon_sort"


students = []

puts "Type a student name"
name = gets.chomp
  if name == ''
     puts "You don't have any student"
  else
    students << name
    while name !=''
      puts "Type another student name(or press enter to finish):"
      name = gets.chomp
      unless name ==''
      students << name
      end
    end

    students = wagon_sort(students)

    number = students.count
    last_student = students.last
    students = students[0..-2]
    student_bef_last = students[-1]
    students = students[0..-2]


    puts "Congratulations! Your Wagon has #{number} students:"
    print "- "
    students.each {|n| print n+","+' '}
    print "#{student_bef_last} "
    print "and #{last_student}"
  end



# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp



# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
