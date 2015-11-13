class Inquiry < ActiveRecord::Base

  validates :name, presence: true
  validates :reply_address, presence: true
  validates :message, presence: true
  
end
