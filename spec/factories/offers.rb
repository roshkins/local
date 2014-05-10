# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    title "MyString"
    details "MyText"
    price "9.99"
    supplier_id 1
    view_count 1
    accept_count 1
  end
end
