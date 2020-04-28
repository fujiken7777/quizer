class AddLikesCountToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :likes_count, :integer
  end
end
