class AddIndexToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_index :quizzes, :name, length: 32
  end
end
