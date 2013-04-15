require 'spec_helper'

describe 'Comment', :js => :true do
  subject {page}
  
  let!(:tutorial) { create(:tutorial) }
  let!(:user) { tutorial.user }
  let(:comment) { build(:comment) }

  describe 'Make a new comment' do  
    it 'allows me to add a comment' do
      expect {
        login(user)
        visit tutorial_path(tutorial)
        fill_in 'comment_content', with: comment.content
        click_button "Add comment"  
        visit tutorial_path(tutorial)
      }.to change(Comment, :count).by(1)
      expect { page }.to have_content(comment.content)
    end
  end
end
