class AddAnswerIdToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :answer_id, :integer
  end
end
