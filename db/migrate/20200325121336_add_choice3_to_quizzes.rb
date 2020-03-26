class AddChoice3ToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :choice3, :string
  end
end
