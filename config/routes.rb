Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :profiles, only: [:index, :new, :create]
  resources :posts
  resources :ansers
  resources :questions, param: :id
  resources :groups do
    resources :ansers
  end
  resources :memorys
  resources :users, only: [:edit, :update]
end
