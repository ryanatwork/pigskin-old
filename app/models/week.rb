class Week < ActiveRecord::Base
  attr_accessible :end_date, :nfl_week, :start_date, :season_id

  has_many :schedules
end
