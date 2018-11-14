class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.integer :student_id
      t.integer :instructor_id
    end
  end
end
