class AddCorrectIdToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :correct_id, :integer
  end
end
