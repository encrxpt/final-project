Rails.application.routes.draw do

   get 'product/index'
   get 'product/show'
  # get 'about/index'


  # resource :product, only: %i[index show]
  resource :about
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)



  root 'about#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
