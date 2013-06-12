class Platform::Solution < ActiveRecord::Base
  attr_accessible :attach, :solution, :status, :version, :ident
end
