Rails.application.routes.draw do
  root to: "home#index"
  resources :wait_queues, path: 'queues'
  devise_for :users, path: ''
end
