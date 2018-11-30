module PredictionUi
  class PredictionsController < ApplicationController
    def new
      @teams = Teams::Team.all
    end
    
    def create
      game_predictor = PredictGame::PredictGame.new(
        Teams::Team.all, Games::Game.all)
      game_predictor.add_subscriber(PredictionResponse.new(self))
      game_predictor.perform(
        Teams::Team.find(params["first_team"]["id"]),
        Teams::Team.find(params["second_team"]["id"]))
    end
    
    class PredictionResponse < SimpleDelegator
      def prediction_succeeded(prediction)
        render locals: {prediction: prediction, message: nil}
      end
      
      def prediction_failed(prediction, error_message)
        render locals: {prediction: prediction, message: error_message}
      end
    end
  end
end
