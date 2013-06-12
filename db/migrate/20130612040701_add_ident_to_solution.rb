class AddIdentToSolution < ActiveRecord::Migration
  def change
    add_column :platform_solutions, :ident, :string
  end
end
