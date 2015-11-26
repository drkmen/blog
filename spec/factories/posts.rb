FactoryGirl.define do
  factory :post do
    title { Faker::Hacker.say_something_smart }
    body { Faker::Hacker.say_something_smart }
    association(:author)
    description { Faker::Hacker.say_something_smart }
  end
end