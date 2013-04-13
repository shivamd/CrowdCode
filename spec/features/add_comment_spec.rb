require 'spec_helper'

describe 'add a comment' do
	it 'allows a signed-in user to add a comment', js: true do 
	link = create(:tutorial_link)
		visit {tutorial_link_path(link.id)}
		expect {
			find('#comment_content').fill_in 'comment_content', with: "What a great tutoriall"
			click_button 'Add comment'
		}.to change(Comment, :count).by(1)
	end
end