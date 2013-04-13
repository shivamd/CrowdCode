# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tutorial_link do
    title "What a jolly day to read a tutorial"
    url "http://www.google.com"
    user_id 1
  end
end
