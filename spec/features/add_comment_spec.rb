require 'spec_helper'

describe 'add a comment' do
	it 'allows a signed-in user to add a comment' do 
		let(:tutorial){ FactoryGirl.create(:tutorial) }
		let(:comment){ FactoryGirl.create(:comment) }
			visit tutorial_path(tutorial.id)
			expect {
				fill_in "comment[content]", with: "hello"
				click_button 'Add comment'
			}.to change(Comment, :count).by(1)
	end
end