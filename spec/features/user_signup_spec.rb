require 'spec_helper' 

describe "User flow" do
  
  it "allows a user to login" do
    visit new_user_session_path
    user = create(:user)
    login(user)
    current_path.should == user_root_path
    page.should have_content(user.username)
  end

  it "allows user to signup" do
    visit new_user_registration_path
    fill_in "user_username", with: "MyUsername"
    fill_in "user_email", with: "myemail@myemail.com"
    fill_in "user_password", with: "password"
    expect{ click_button "Sign up"}.to change(User, :count).by(1)
  end

end
