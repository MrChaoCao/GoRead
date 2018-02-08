Rails.application.routes.draw do

  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do

    resources :users, only: [:new, :create, :show]
    resource :session, only: [:new, :create, :destroy]

    resources :shelves, except: [:edit, :new] do
      resources :books, only: :none do
        resource :shelf_membership, only: [:create, :destroy]
      end
    end

    resources :books, only: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
