class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :name,  null: false
      t.string :text,  null: false
      t.text :image,   null: false
      t.timestamps
    end
  end
end
