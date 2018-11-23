Rails.application.routes.draw do
  mount AppComponent::Engine, at: "/app_component"
  mount GamesAdmin::Engine, at: "/games_admin"
  mount TeamsAdmin::Engine, at: "/teams_admin"
  mount PredictionUi::Engine, at: "/prediction_ui"
  mount WelcomeUi::Engine, at: "/welcome_ui"
  
  root to: "welcome_ui/welcome#index"
end
