Rails.application.routes.draw do
  resources :connections, only: [:new, :create, :show, :index]
end
