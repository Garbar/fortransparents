Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  namespace :admin do
    resources :users

    root to: "users#index"
  end
  get 'pages/about' => 'high_voltage/pages#show', id: 'about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'dashboard#index'
end
