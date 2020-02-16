require 'sidekiq/web'

Rails.application.routes.draw do
  resources :trades

  devise_for :users

  root to: 'trades#index'

  resources :conversations do
  	resources :messages

  end

  
 
end
