class AddImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_image, :string, null: false
  end
end
