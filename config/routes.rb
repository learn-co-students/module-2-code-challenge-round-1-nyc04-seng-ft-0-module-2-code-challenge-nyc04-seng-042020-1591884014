Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :episodes, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :appearances, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
