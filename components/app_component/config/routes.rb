AppComponent::Engine.routes.draw do
  resource :welcome, only: [:index]
    
  root to: "welcome#index"
end
