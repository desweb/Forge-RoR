class Project < ActiveRecord::Base
  attr_accessible :description, :state, :title
end
