class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true
    #add an index on the email column of the users table
    #unique: true enforces uniqueness
  end
end
