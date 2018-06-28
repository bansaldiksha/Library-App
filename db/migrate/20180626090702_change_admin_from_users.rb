class ChangeAdminFromUsers < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :users, :admin, false
  	change_column_default :books, :borrowed, false
  end
end
