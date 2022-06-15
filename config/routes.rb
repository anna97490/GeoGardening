Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :plants, only: %i[index show] do
    resources :plant_lists, only: :create
  end

  resources :lists, only: %i[index new create show destroy]

  resources :plant_lists, only: :destroy
end
