class Team < ActiveRecord::Base
  attr_accessible :code, :conference_id, :division_id, :name
end
