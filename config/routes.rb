Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants, only: %i[index show new create]
end
