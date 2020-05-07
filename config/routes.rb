Rails.application.routes.draw do
  devise_for :users

  resources :lists, only:[:index, :create, :update, :destroy] do
    member do
      put :move   #/lists/id/moved
    end
  end

  resources :cards, only: [:create, :update, :destroy] do
    member do
      put :move
    end
  end

  root 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
