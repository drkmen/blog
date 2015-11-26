FactoryGirl.define do
  factory :author do
    name { Faker.name }
    url { Faker::Internet.url }
    about { Faker::Lorem.sentence }
    posts_author true
  end
end