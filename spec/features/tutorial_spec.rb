require 'spec_helper'

describe "Tutorial" do 
	subject { page }

	describe "Tutoral creation" do 
		let(:user) { FactoryGirl.create(:user) }
		let(:submit) { "Submit tutorial" }
		before do 
			visit new_user_session_path 
			fill_in "user_email", with: user.email 
			fill_in "user_password", with: user.password 
			click_button "Sign in"
			visit new_tutorial_path
		end

		describe "with invalid information" do 
			it "should not create a tutorial" do 
				expect { click_button submit }.not_to change(Tutorial,:count)
			end
		end

		describe "with valid information" do 
			before do 
				fill_in "Title", with: "a" * 15
				fill_in "Content", with: "b" * 100
			end

			it "should create a tutorial" do 
				expect { click_button submit }.to change(Tutorial,:count).by(1)
			end
		end
	end
end

