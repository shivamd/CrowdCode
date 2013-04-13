FactoryGirl.define do	
	factory :tutorial do
		title Faker::Lorem.sentence
		content Faker::Lorem.paragraph
		user_id 1
	end
end