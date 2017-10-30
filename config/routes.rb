Rails.application.routes.draw do
  resources :tags, only: :show
  resources :sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sites#index'
end
