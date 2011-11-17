class AddUserPhoto < ActiveRecord::Migration
  def up
    add_column :users, :photo_id, :integer
    add_index :users, :photo_id
  end

  def down
    remove_column :users, :photo_id
    remove_index :users, :photo_id
  end
end
