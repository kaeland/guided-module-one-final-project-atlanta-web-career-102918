class AddColsToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :topic, :string
    add_column :meetings, :question, :string
    add_column :meetings, :answer, :string
  end
end