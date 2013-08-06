Paporeto::Application.routes.draw do
  resources :articles, only: [:index, :show]

  devise_for :users

  get :admin, :to => 'admin/dashboard#index'
  namespace :admin do
    resources :dashboard
    resources :users
    resources :categories
    resources :articles
  end

  root 'articles#index'

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
