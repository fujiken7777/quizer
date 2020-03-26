class AddAnswerNumberToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :answer_number, :integer
  end
end
