class Project < ActiveRecord::Base
  attr_accessible :date_created, 
  :name, 
  :sector, 
  :sub_sector
end
