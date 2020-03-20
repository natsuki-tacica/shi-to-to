Rails.application.routes.draw do
  devise_for :users  
  root to: 'groups#index'
  resources :users, only: [:index, :edit, :update, :show] #ユーザー周りきれいにする
  resources :groups,only:[:index] do
    resources :questions,only:[:index] do
      resources :ansers,only:[:new,:create]
    end
  end
end
