class Platform::Solution < ActiveRecord::Base
  attr_accessible :attach, :solution, :status, :version, :ident
  has_attached_file :resume
  attr_accessible :resume
end
