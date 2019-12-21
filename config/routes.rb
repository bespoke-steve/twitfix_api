Rails.application.routes.draw do
  get 'alive', to: 'alive#index'
  
  root 'alive#index'
end
