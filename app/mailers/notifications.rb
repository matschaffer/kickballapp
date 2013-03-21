class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_game.subject
  #
  def new_game
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
