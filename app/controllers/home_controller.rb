class HomeController < ApplicationController
  def index
		if params[:search].present?
      @json = Disease.near(params[:search], 50, :order => :distance).to_gmaps4rails
    else
      @json = Disease.all.to_gmaps4rails
    end
  end

	def gallery
	end
end
