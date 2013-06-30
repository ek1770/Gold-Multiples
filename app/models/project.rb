class Project < ActiveRecord::Base
  attr_accessible :date_created, 
  :name, 
  :sector, 
  :sub_sector

  has_many :transactions
  has_many :users

end
