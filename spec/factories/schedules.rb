# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :schedule do
    nfl_week_id 1
    home_team_id 1
    away_team_id 1
    start_time "2012-07-21"
  end
end
