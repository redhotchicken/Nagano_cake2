Rails.application.routes.draw do

  # 顧客用
  devise_for :customers, skip:[:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  devise_for :admin, skip:[:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :public do
    root to: "homes#top"
    get 'about'=>"homes#about"
    patch 'customers/withdrawal/:id', to: 'customers#withdrawal', as: "customers/withdrawal"

    get 'orders/complete', to: 'orders#complete', as: "orders/complete"
    post 'orders/check', to: 'orders#check', as: "orders/check"

    get 'customers/quit', to: 'customers#quit', as: "customers/quit"

    delete 'cart_items/destroy_all', to: 'cart_items#destroy_all', as: "cart_items/destroy_all"
    
    resources :items, only:[:index, :show]
    resources :customers, only:[:show, :edit, :update]
    resources :cart_items, only:[:index, :update, :destroy, :create]
    resources :orders, only:[:new, :create, :index, :show]
    resources :deliveries, only:[:index, :edit, :create, :update, :destroy]
  end

  namespace :admin do
    root to: "homes#top"
    resources :items, only:[:index, :new, :create, :show, :edit, :update]
    resources :genres, only:[:index, :create, :edit, :update]
    resources :customers, only:[:index, :show, :edit, :update]
    resources :orders, only:[:show, :update]
    resources :order_items, only:[:update]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
