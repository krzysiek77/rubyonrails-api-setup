Rails.application.routes.draw do

  # namespace the controllers without affetint the URI
  # scope module: :v1, contrains: ApiVersion.new('v1', true) do
  #   resources :bands do
  #     resources :albums
  #   end
  # end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'

  # concern :commentable do
  #   resources :comments
  # end
  #
  # resources :messages, concerns: :commentable

  # GET    /admin/articles(.:format)     admin/articles#index
  # namespace :admin do
  #   resources :articles, :comments
  # end
  #
  # # GET    /articles(.:format)           admin/articles#index
  # scope module: 'admin' do
  #   resources :articles, :comments
  # end
  #
  # # GET    /admin/articles(.:format)     articles#index
  # scope '/admin' do
  #   resources :articles, :comments
  # end
end
