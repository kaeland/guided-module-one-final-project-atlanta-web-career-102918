class StudentCommandLineInterface
  def initialize
    @instance_of_student = nil 
    @student_name = nil
    @topic = nil
    @question = nil
    @instructor_name = nil 
  end
   
  def get_student_first_name
    puts "What’s your first name?..."
    @student_name = gets.chomp
  end

  def get_topic_and_question_from_student
    puts "What topic do you need help with?"
    @topic = gets.chomp
    puts "What’s you specific question? Please detail below…"
    @question = gets.chomp 
    puts "Sweet, let's see if we can get someone to help you..."
    sleep(1.5)
    # response
  end

  def display_instructors
    puts "Ok here are the available instructors..."
    Instructor.where(is_generous: true).each do |instructor|
      puts "#{instructor.name}"
    end
  end

  def get_available_instructor
    puts "Select an instructor from the list above, 
          and then write their name below…"
    @instructor_name = gets.chomp 
    sleep(1)
    puts "Great, an instructor will be in touch with you soon!"
  end

  def create_student
    @instance_of_student = Student.create(name: @student_name)
  end

  def create_meeting
    Meeting.create(student_id: @instance_of_student.id, topic: @topic, question: @question, answer: @answer)
  end
end
