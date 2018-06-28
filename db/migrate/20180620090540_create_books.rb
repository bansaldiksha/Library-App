class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :author
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
