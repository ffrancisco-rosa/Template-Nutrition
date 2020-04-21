Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :nutri do
    resources :customers, only: [:index, :show, :new, :create, :destroy]
  end

  namespace :guest do

  end
end
