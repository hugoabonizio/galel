class RemoveAttachFromPlatformSolution < ActiveRecord::Migration
  def up
    remove_column :platform_solutions, :attach
  end

  def down
    add_column :platform_solutions, :attach, :string
  end
end
