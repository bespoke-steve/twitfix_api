Rails.application.routes.draw do
  get 'alive', to: 'alive#index'
  
  resources :messages

  root 'alive#index'
end
