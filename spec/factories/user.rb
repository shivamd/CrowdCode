FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    password "password"
    email    { Faker::Internet.email }
  end
end
