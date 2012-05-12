Epuka::Application.routes.draw do
  root :to => 'home#index'

  resources :diseases
	resources :home, :only => [:index]
	resources :contacts, :only => [:index, :new, :create, :show, :destroy]
	resources :feed, :only => [:rss]

  authenticated :user do
  	root :to => 'home#index'
	end



  devise_for :users
	resources :users, :only => [:show, :index]
end
