class RemoveBookFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :book, foreign_key: true
  end
end
