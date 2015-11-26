FactoryGirl.define do
  factory :project do
    name { Faker::App.name }
    description { Faker::Hacker.say_something_smart }
    link { Faker::Internet.url }
  end
end