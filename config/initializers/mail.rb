ActionMailer::Base.smtp_settings = { 
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "gmail.com",
  :user_name => "crowdcode1",
  :password => "devbootcamp123",
  :authentication => "plain",
  :enable_starttls_auto => true 
}
