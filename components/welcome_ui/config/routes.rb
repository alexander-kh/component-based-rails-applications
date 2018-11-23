WelcomeUi::Engine.routes.draw do
  resource :welcome, only: [:index], controller: "/welcome_ui/welcome"
  root to: "/welcome_ui/welcome#index"
end
