Rails.application.routes.draw do
  root "places#index"

  # Places Routes
  resources :places, only: [:index, :new, :create, :show] do
    resources :entries, only: [:new, :create] 
  end
end
