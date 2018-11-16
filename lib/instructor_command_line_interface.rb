class InstructorCommanLineInterface
  def initialize
    @instructor_first_name = nil
    @generous = nil 
    @student_to_help = nil
    @answer = nil 
  end

  def get_instructor_first_name
    puts "Ok, so you're an Instructor, great! What's your first name?"
    @instructor_first_name = gets.chomp.downcase
  end  

  def is_instructor_generous
    puts "Are you feeling generous? (yes or no)"
    generous = gets.chomp.downcase
    @generous = generous == "yes" ? 1 : 0 
    #store boolean in instructor table
    if generous != "yes"
      puts "Ok thanks anyways, bye"
    else 
      puts "Sweet! Here's who needs help..."
      # binding.pry
      Student.all.each do |student|
        puts "#{student.name.capitalize}"
      end
      sleep(1.5)
      puts "And here are their questions..."
      Meeting.all.each do |meeting|
        puts "#{meeting.topic}: #{meeting.question}"  
      end
    end  
  end

  def select_student_to_help
    puts "Write the student's name you'd like to help below..."
    @student_to_help = gets.chomp.downcase 
    #select which student teacher wants to help
    puts "Sweet, please answer #{@student_to_help.capitalize}'s question below…"
    @answer = gets.chomp 
    puts "Hey...you're amazing! Thanks so much for helping!"
  end 

  def create_instructor
    Instructor.create(name: @instructor_first_name, generous: @generous)
  end

  def create_meeting
    
  end

end