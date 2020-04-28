class AddChoice1ToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :choice1, :string, null: false, default: ''
  end
end
