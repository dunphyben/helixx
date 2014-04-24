# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :idea do
    title "MyString"
    content "MyText"
    summary "MyText"
    published false
  end
end
