class Season < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date

  has_many :weeks
end
