class CreatePlatformSolutions < ActiveRecord::Migration
  def change
    create_table :platform_solutions do |t|
      t.integer :version
      t.integer :status
      t.text :solution
      t.string :attach

      t.timestamps
    end
  end
end
