# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :idea do
    title Faker::Lorem.sentence
    summary Faker::Lorem.paragraph
    content Faker::Lorem.paragraphs.join(" ")
    published false
  end
end
