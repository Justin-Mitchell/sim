class AutoResponseMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def contact_form(message)
    to = message.to
    from = message.from
    @message = messsage.body
    
    mail
    
  end
end
