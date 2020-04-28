class AddAnswerNumberToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :answer_number, :integer, null: false, default: 0
  end
end
