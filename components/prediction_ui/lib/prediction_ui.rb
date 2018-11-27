require "slim-rails"
require "jquery-rails"

require "predictor"
require "web_ui"

module PredictionUi
  require "prediction_ui/engine"
  require "games"
  
  def self.nav_entry
    {
      name: "Predictions",
      link: -> {::PredictionUi::Engine.routes.url_helpers.new_prediction_path}
    }
  end
end
