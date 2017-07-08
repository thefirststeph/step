Rails.application.routes.draw do

	root to:"pages#home"

  resources :requests
  resources :patients, only: [:index]
  resources :organizations do
  	resources :patients
  end

  resources :therapists do
  	resources :bookings, only: [:show, :new, :create, :edit, :update, :destroy]
  end

end
