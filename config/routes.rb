Rails.application.routes.draw do
  resources :statuses
  resources :items
  resources :locations
  resources :vendors
  root :to => 'items#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end