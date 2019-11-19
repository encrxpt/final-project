Rails.application.routes.draw do

  get 'about/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resource :about


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
