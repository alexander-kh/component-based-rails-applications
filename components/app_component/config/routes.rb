AppComponent::Engine.routes.draw do
  resource :welcome, only: [:index]
  resource :prediction, only: [:new, :create]
  
  root to: "welcome#index"
end
