class Disease < ActiveRecord::Base
	acts_as_gmappable
  attr_accessible :latitude, :location, :longitude, :more_info, :name, :reported_cases, :signs, :transmission_mode

	belongs_to :user
	validates_presence_of :name
	validates_uniqueness_of :name

	geocoded_by :location
  after_validation :geocode, :if => :location_changed?

	def gmaps4rails_address
  	location
  end

	def gmaps4rails_infowindow
  	"<h4>#{name}</h4>" << "<h4>#{location}</h4>"<<"<p>
		Transmission modes: #{transmission_mode}</br>
		Reported @ #{created_at}</br>
		<a href='/diseases/#{id}'>More info</a></p>"
  end
end
