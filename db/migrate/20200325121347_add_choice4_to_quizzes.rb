class AddChoice4ToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :choice4, :string
  end
end
