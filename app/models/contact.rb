class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name, :subject

	validates_presence_of :name, :email, :message
end
