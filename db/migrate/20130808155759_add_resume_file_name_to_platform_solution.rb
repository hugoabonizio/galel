class AddResumeFileNameToPlatformSolution < ActiveRecord::Migration
   def self.up
      add_column :platform_solutions, :resume_file_name,    :string
   end
 
   def self.down
      remove_column :platform_solutions, :resume_file_name
   end



end
