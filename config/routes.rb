Rails.application.routes.draw do





  get 'contacts/index'

  resources :about
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products, only: %i[index show] do
    collection do
      get 'filter'
      get 'search'
    end
  end
  resources :contacts

  root 'about#index'

   # get 'customer/show'
  # get 'category/show'
  #  get 'product/index'
  #  get 'product/show'
  # get 'about/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
