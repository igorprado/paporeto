Paporeto::Application.routes.draw do
  devise_for :users

  get :admin, :to => 'admin/articles#index'
  namespace :admin do
    resources :users, path: 'usuarios', path_names: {new: 'novo', edit: 'editar'}
    resources :categories, path: 'categorias', path_names: {new: 'novo', edit: 'editar'}
    resources :articles, path: 'artigos', path_names: {new: 'novo', edit: 'editar'}
  end

  #root 'admin/articles#index'

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
end
