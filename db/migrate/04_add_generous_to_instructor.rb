class AddGenerousToInstructor < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :is_generous, :boolean
  end
end 
