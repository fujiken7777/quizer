class AddChoice2ToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :choice2, :string, null: false, default: ''
  end
end
