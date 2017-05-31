FactoryGirl.define do
  factory :skill do
    name Faker::App.name
    value 100
    start_date DateTime.now
  end
end
