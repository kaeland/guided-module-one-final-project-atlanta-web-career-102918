class InstructorCommanLineInterface
  def initialize
    @instructor_first_name = nil
    @generous = nil 
    @student_to_help = nil
    @answer = nil 
  end

  def get_instructor_first_name
    puts "What's your first name?"
    @instructor_first_name = gets.chomps
  end  

  def is_instructor_generous
    puts "Are you feeling generous? (yes or no)"
    generous = gets.chomp
    @generous = generous == "yes" ? 1 : 0 
    #store boolean in instructor table
    if generous != "no"
      puts "Ok thanks anyways, bye"
    else 
      puts "Sweet! Here's who needs help and with what…"
      #display students
    end  
  end

  def select_student_to_help
    puts "Write the student's name you'd like to help below..."
    @student_to_help = gets.chomp 
    #select which student teacher wants to help
    puts "Sweet, please answer their question below…"
    @answer = gets.chomp 
    puts "Hey...you're amazing! Thanks so much for helping!"
  end 

  def create_instructor
    Instructor.create(name: @instructor_first_name, generous: @generous)
  end

  def create_meeting
    
  end

end