class RemoveTypeFromUser < ActiveRecord::Migration
  def up
    rename_column :users, :type, :utype
  end

  def down
  end
end
