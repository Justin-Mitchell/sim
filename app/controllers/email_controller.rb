########### Email Fields ###########
#
# id
# direction
# name
# subject
# body
# to
# from
# user_id
# created_at
# updated_at
#
########### Email Fields ###########

class EmailController < ApplicationController

  def new
  end

  def create
  end
  
  def deliver
    @email = Email.new(email_params)
    raise @email.inspect
  end
  
  private
  
  def email_params
    params.require(:email).permit(:to, :from, :body, :direction, :kind, :subject)
  end
  
end
