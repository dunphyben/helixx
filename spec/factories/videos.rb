# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  ids = %w(1 2 3 4 5 6 7 8 9 10 11 12)
  selected = ""
  1.times do
    selected += ids.sample
  end
  factory :video do
    title { Faker::Lorem.sentence }
    video_url "http://www.youtube.com/embed/iD4qsWnjsNU"
    idea_id 37
    user_id 3
  end
end
