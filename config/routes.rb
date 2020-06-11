Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show] #reminder question, is show one of the links, or should I go to :index or :id?
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:index, :new, :create, :show]
end
