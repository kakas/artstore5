Rails.application.routes.draw do

  root "products#index"

  devise_for :users

  namespace :admin do
    resources :products
    resources :users do
      member do
        post :to_admin
        post :to_normal
      end
    end
  end

  resources :products do
    post :add_to_cart, on: :member
  end

  resources :carts do
    post :checkout, on: :collection
    delete :clean, on: :collection
  end

  namespace :account do
    resources :orders
  end

  resources :orders do
    get :pay_with_credit_card, on: :member
  end

  resources :items, controller: "cart_items"

end
