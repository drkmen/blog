FactoryGirl.define do
  factory :author do
    name { Faker.name }
    about { Faker::Lorem.sentence }
    posts_author true
  end
end
