# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :search do
    industry_id 1
    location "MyString"
    longitude 1.5
    latitude 1.5
  end
end
