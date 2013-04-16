require 'spec_helper'

describe "Tutorial" do 
	subject { page }

	describe "Tutoral creation", :js => true do 
		let(:user) { create(:user) }
		let(:submit) { "Submit tutorial" }
		before(:each) do
			login(user)
			visit new_tutorial_path
		end
		describe "with invalid information" do 
			it "should not create a tutorial" do 
				expect { click_button submit }.not_to change(Tutorial,:count)
			end
		end
		describe "with valid information" do 
			before do 
				fill_in "tutorial_title", with: "aa" * 15
				choose "tut_type_add_link"
				fill_in "tutorial_url", with: "http://www.google.com"		
			end
			it "should create a tutorial" do 
				expect { click_button submit }.to change(Tutorial,:count).by(1)
			end
		end

	end
end

