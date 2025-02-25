Rails.application.routes.draw do
  root "places#index"

  resources :places, only: [:index, :new, :create, :show] do
    resources :entries, only: [:new, :create] 
  end
end
