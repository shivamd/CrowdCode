FactoryGirl.define do
	factory :comment do
		content Faker::Lorem.sentence
		user_id 1
		commentable_id 1
		commentable_type 'Tutorial'
	end
end