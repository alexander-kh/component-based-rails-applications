require "slim-rails"
require "jquery-rails"

require "web_ui"

module GamesAdmin
  require "games_admin/engine"
  require "games"
  require "teams_store"
  
  def self.nav_entry
    {
      name: "Games",
      link: -> {::GamesAdmin::Engine.routes.url_helpers.games_path}
    }
  end
end
