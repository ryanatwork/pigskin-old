class Division < ActiveRecord::Base
  attr_accessible :conference_id, :name

  belongs_to :conference
  has_many :teams
end
