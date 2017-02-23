Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'

  namespace :assets do
    resources :jobs, only: [:index, :show, :update]
  end

  namespace :customers do
    resources :jobs, only: [:index, :show, :update]
  end

  resources :assets, only: [:index, :show] do
    resources :jobs, only: [:create]
  end

  resources :jobs, only: [:delete] do
    member do
      get 'done'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
