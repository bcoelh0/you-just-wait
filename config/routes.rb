Rails.application.routes.draw do
  resources :wait_queues, path: 'queues'
  devise_for :users, path: ''
  root to: "home#index"
end
