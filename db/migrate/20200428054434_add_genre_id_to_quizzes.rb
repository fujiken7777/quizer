class AddGenreIdToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :genre_id, :integer, null: false, default: 0
  end
end
