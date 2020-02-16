require 'sidekiq/web'

Rails.application.routes.draw do
  resources :trades
  devise_for :users
  root to: 'trades#index'
 
end
