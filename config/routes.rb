Rails.application.routes.draw do
  'ciders#index'
  resources :ciders

  'ciders#new'
  resources :ciders
end
