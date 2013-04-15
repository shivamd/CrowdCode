require 'spec_helper'

describe 'Comment' do
  subject {page}

  describe 'Make a new comment', :js => :true do
    before do 
      FactoryGirl.create(:user)
      FactoryGirl.build(:comment)
      FactoryGirl.build(:tutorial)
    end
      
      it 'allows me to add a comment' do
        tutorial = Tutorial.first
        comment = Comment.first
        visit tutorial_path(tutorial.id)
        fill_in 'comment_content', with: comment.content
        click_button "Add comment"
        expect {click_button "Add comment"}.to change(Comment, :count).by(1)
        expect { page }.to have_content(comment.content)
    end
  end
end
