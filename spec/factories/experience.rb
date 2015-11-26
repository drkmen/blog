FactoryGirl.define do
  factory :experience do
    job_title { Faker::App.name }
    employer { Faker::Company.name }
    description { Faker::Lorem.sentence }
    from DateTime.now
    to DateTime.now + 1.year
    study false
  end
end