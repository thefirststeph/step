Rails.application.routes.draw do

	root to:"pages#home"

  resources :requests

  resources :organizations do
  	resources :patients
  end

  resources :therapists, only: [:show, :new, :create, :edit, :update] do
  	resources :bookings
  end

end
