FactoryGirl.define do
  factory :tutorial do
    title "A sample tutorial with fifteen characters"
    content { Faker::Lorem.paragraph }
    category 
    user
  end
end
