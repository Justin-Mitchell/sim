class Email < ActiveRecord::Base
  has_one :user
  has_many :subscribers
  
  private
  
  def email_params
    params.require(:email).permit(:to, :from, :body, :direction, :kind, :subject)
  end
end
