Rails.application.routes.draw do
  root to: "home#index"

  get "home/index"
  get "home/about"
  get "home/contact"

  resources :books
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
end

