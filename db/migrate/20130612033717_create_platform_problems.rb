class CreatePlatformProblems < ActiveRecord::Migration
  def change
    create_table :platform_problems do |t|
      t.text :problem
      t.text :description
      t.string :ident

      t.timestamps
    end
  end
end
