class AddUserIdColumns < ActiveRecord::Migration
  def change
    add_column :votes, :user_id, :int
    add_column :answers, :user_id, :int
  end
end
