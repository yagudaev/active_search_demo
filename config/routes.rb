Rails.application.routes.draw do
  resources :directors
  resources :titles
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
