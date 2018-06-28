class AddBookRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :book
  end
end
