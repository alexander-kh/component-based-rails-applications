class MoveTeamFromAppComponentToTeams < ActiveRecord::Migration[5.1]
  def change
    rename_table :app_component_teams, :teams_teams
  end
end
