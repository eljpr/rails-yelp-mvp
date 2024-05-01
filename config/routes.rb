Rails.application.routes.draw do
  # get 'reviews/new'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[new create]
  end
end
