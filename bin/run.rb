require_relative '../config/environment.rb'
student_cli = StudentCommandLineInterface.new
instructor_cli = InstructorCommanLineInterface.new

puts "Are you a student? (Yes or No):"
response = gets.chomp

if response == "yes"
  student_cli.get_student_first_name
  student_cli.get_topic_and_question_from_student
  student_cli.display_instructors
  student_cli.get_available_instructor
  student_cli.create_meeting 
else
  instructor_cli.get_instructor_first_name
  instructor_cli.is_instructor_generous
  instructor_cli.select_student_to_help
end
