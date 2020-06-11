Rails.application.routes.draw do
  resources :appearances, only: %i[index new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index, :show]
end
