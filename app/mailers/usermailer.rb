class Usermailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    mail to: "to@example.org"
  end
  
  def welcome(user)
	@user = user
	mail(:to => user.email, :subject => "A big welcome from S|TUNES")
end
end
