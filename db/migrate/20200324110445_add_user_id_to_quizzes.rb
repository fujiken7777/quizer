class AddUserIdToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :user_id, :integer, null: false
  end
end
