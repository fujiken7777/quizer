class RemoveCorrectIdFromQuizzes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quizzes, :correct_id, :integer
  end
end
