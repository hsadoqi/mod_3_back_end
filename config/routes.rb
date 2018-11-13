Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user, only: [:create]
  resources :speech, only: [:create, :update, :show]
end
