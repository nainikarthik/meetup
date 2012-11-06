class Project < ActiveRecord::Base
  belongs_to :engineer
  attr_accessible :description, :title, :engineer_id
end
