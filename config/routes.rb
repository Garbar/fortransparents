Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :users
    resources :articles

    root to: "users#index"
  end

  resources :articles, only: [:index, :show]
  get 'pages/about' => 'high_voltage/pages#show', id: 'about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
