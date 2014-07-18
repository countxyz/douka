Rails.application.routes.draw do
  root 'home#index'

  resources :feeds
  resources :entries

  get '*path', to: 'home#index'
end
