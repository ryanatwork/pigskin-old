# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team do
    name "MyString"
    code "MyString"
    division_id 1
    conference_id 1
  end
end
