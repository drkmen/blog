FactoryGirl.define do
  factory :post do
    title { Faker::Hacker.say_something_smart }
    body { Faker::Hacker.say_something_smart }
    description { Faker::Hacker.say_something_smart }
  end
end