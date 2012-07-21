# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :week do
    nfl_week 1
    start_date "2012-07-21"
    end_date "2012-07-21"
  end
end
