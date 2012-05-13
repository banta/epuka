class Domain < ActiveRecord::Base
  attr_accessible :more_info, :name

	validates_presence_of :name, :more_info
	validates_uniqueness_of :name

	belongs_to :user
end
