Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :products, only: [:index, :new, :edit, :create, :show] do
      resources :product_photos, only: [:index, :create]
    end
  end
end
