Paporeto::Application.routes.draw do
  resources :reader_articles, only: [:new, :create, :show]


  devise_for :users

  get :admin, :to => 'admin/dashboard#index'
  namespace :admin do
    resources :dashboard
    resources :users
    resources :categories
    resources :articles
  end

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox

  root 'home#index'

  resources :categories, path: '', only: [] do
    resources :articles, path: '', only: [:index, :show]  
  end
  
end
