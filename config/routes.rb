Rails.application.routes.draw do

  resources :venue_listings
  resources :venue_listings, except: [:edit] do
  end
  resources :companychecks, only: [:show]
  resources :companies
  resources :customers
  get 'pages/home'
  devise_for :users
  root 'welcome#page'
# resources :photos, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
