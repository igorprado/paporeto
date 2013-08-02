Paporeto::Application.routes.draw do
  devise_for :users

  get :admin, :to => 'admin/dashboard#index'
  namespace :admin do
    resources :dashboard
    resources :users
    resources :categories
    resources :articles
  end

  #root 'admin/articles#index'

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
