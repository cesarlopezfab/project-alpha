Rails.application.routes.draw do
  resources :piggy_banks
  get 'private/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'
end
