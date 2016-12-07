class UserMailer < ApplicationMailer
  default from: 'donotreply@medimailhub.us'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_appointment.subject
  #
  def new_appointment(current_user,receiver)
    @greeting = "Hi #{receiver.first_name} #{receiver.last_name}"
    @sender = "#{current_user.first_name} #{current_user.last_name}"
    mail to: "jacobv1992@gmail.com", subject: "test Subject"
  end
end