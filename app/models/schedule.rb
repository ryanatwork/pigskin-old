class Schedule < ActiveRecord::Base
  attr_accessible :away_team_id, :home_team_id, :nfl_week_id, :start_time
end
