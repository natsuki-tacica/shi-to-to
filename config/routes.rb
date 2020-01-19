Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'groups#index'
  resources :ansers
  resources :questions, param: :id
  resources :groups do
    resources :ansers
  end
  resources :users, only: [:edit, :update]

  # resources :survey do
  #   resources :question, only: :show
  # end
  # resources :question, only: :show do
  #   resources :answer, only: [:create, :update]
  # end
end
