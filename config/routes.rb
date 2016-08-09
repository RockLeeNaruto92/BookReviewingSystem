Rails.application.routes.draw do

  resources :books
  get 'home/index'

  get 'home/about'

  get 'home/contact'

  devise_for :users
  root to: "home#index"

end

