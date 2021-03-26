Rails.application.routes.draw do
  root "summary#index"

  resources :projects
  resources :entries
  resources :summary
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
