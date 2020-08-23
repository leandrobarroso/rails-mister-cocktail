Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    get 'search', on: :collection
    resources :doses, only: %i[create]
    resources :reviews, only: %i[create]
  end

  resources :doses, only: [:destroy]
  resources :reviews, only: [:destroy]
end
