class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.integer :instructor_id
      t.integer :student_id 
    end
  end
end