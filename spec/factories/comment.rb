FactoryGirl.define do
  factory :comment do
    content Faker::Lorem.sentence
    commentable_type 'Tutorial'
    commentable_id 1
    user
  end
end
