Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :users
    resources :articles
    resources :stories
    resources :videos

    root to: "users#index"
  end
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end

  resources :articles, only: [:index, :show], concerns: :paginatable
  resources :stories, only: [:index, :show], concerns: :paginatable
  resources :videos, only: [:index, :show], concerns: :paginatable
  resources 'contact', only: [:new, :create], path_names: { new: '' }
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  get 'pages/about' => 'high_voltage/pages#show', id: 'about'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
