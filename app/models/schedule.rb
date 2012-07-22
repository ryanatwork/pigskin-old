class Schedule < ActiveRecord::Base
  attr_accessible :away_team_id, :home_team_id, :week_id, :start_time

  belongs_to :week
  belongs_to :away_team, :class_name => "Team", :foreign_key => "away_team_id"
  belongs_to :home_team, :class_name => "Team", :foreign_key => "home_team_id"

end
