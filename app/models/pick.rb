class Pick < ActiveRecord::Base
  attr_accessible :points, :team_id, :user_id, :week_id, :schedule_id

  belongs_to :user
end
