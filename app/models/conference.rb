class Conference < ActiveRecord::Base
  attr_accessible :name

  has_many :divisions
  has_many :teams
end
