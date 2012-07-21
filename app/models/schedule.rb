class Schedule < ActiveRecord::Base
  attr_accessible :away_team_id, :home_team_id, :week_id, :start_time

  belongs_to :week
end
