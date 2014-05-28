# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    bio "MyText"
    address "MyString"
  end
end
