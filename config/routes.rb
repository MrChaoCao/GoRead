Rails.application.routes.draw do

namespace :api, defaults: {format: :json} do
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
