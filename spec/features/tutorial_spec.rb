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
				debugger
				fill_in "Title", with: "aa" * 15
				
				fill_in "Content", with: "b" * 100
			end

			it "should create a tutorial" do 
				expect { click_button submit }.to change(Tutorial,:count).by(1)
			end
		end
	end
end

