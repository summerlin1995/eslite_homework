Rails.application.routes.draw do
  namespace :admin do
    get 'product_photos/index'
    get 'product_photos/create'
  end
  root to: "pages#home"

  devise_for :users

  namespace :admin do
    resources :products, only: [:index, :new, :edit, :create, :show, :update] do
      resources :product_photos, only: [:index, :create]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
