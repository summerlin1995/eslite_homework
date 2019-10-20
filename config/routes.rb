Rails.application.routes.draw do
  namespace :admin do
    get 'products_photo/index'
    get 'products_photo/create'
  end
  namespace :admin do
    get 'products/index'
    get 'products/show'
    get 'products/new'
    get 'products/create'
    get 'products/edit'
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products, only: [:index, :new, :edit, :create, :show] do
      resources :product_photos, only: [:index, :create]
    end
  end
end
