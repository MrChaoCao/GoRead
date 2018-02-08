Rails.application.routes.draw do

  root to: "static_pages#root"

  namespace :api, defaults: {format: :json} do

    resources :users, only: [:new, :create, :show] do
      resources :shelves, except: [:edit, :new]
    end

    resource :session, only: [:new, :create, :destroy]

    resources :books, only: [:index, :show] do
      resource :shelf_membership, only: [:create, :destroy]
    end

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
