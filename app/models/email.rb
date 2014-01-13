class Email < ActiveRecord::Base
  has_one :user
  has_many :subscribers
end
