Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/checkout'
  post 'gallery/checkout'
  resources :stores
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  get 'gallery/purchase_complete'
  get 'gallery/search'
  post 'gallery/search'
  devise_for :users
  get 'admins/dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # namespace :admin do
  #   get 'dashboard', to: 'admins#dashboard'
  # end
  # root to: 'admins#dashboard'
  get 'home/index'
  root to: 'home#index'

  get 'home/shop'
  get 'home/aboutUs'
  get 'home/services'
  get 'home/blog'
  get 'home/contact'
  get 'home/cart'
  get 'home/checkout'
  get 'home/thankyou'
end
