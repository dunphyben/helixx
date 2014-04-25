# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    title { Faker::Lorem.sentence }
    video_url "http://www.youtube.com/embed/iD4qsWnjsNU"
    idea_id { Faker::Number.number(2) }
    user_id { Faker::Number.number(2) }
  end
end
