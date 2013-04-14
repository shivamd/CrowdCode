class UserMailer < Devise::Mailer
  default from: "from@example.com"

   def welcome_email(user)
    @user = user
    @url  = "http://stormy-hollows-8884.herokuapp.com"
    mail(:to => user.email, :subject => "Welcome to CrowdCode")
  end

end
