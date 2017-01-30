Rails.application.routes.draw do
  
  resources :events
  resources :organizations

  get 'query' => 'query#index'
  post 'query' => 'query#result'

  root 'query#index'
end
