class Notifier < ActionMailer::Base
  default :from => "sklounge@gmail.com"


  def reservation_confirmation(user)
    @reservation = user
    mail(:to => user.email , :subject => 'SKlounge:: Thank you Reservating With Us')
  end

end

