class Team < ActiveRecord::Base
  attr_accessible :code, :conference_id, :division_id, :name

  belongs_to :division
  belongs_to :conference
end
