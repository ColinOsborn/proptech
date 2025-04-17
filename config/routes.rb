Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root "home#index"

  devise_scope :user do
    get "login", to: "devise/sessions#new"
    get "signup", to: "devise/registrations#new"
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check
end
