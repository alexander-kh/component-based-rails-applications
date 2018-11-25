class MoveGameFromAppComponentToGames < ActiveRecord::Migration[5.1]
  def change
    rename_table :app_component_games, :games_games
  end
end
