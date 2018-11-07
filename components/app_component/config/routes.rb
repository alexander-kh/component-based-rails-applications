AppComponent::Engine.routes.draw do
  resources :games
  resources :teams
  
  resource :welcome, only: [:index]
  resource :prediction, only: [:new, :create]
  
  root to: "welcome#index"
end
