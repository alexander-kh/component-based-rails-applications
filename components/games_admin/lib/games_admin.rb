require "slim-rails"
require "jquery-rails"

require "app_component"

module GamesAdmin
  require "games_admin/engine"
  require "games"
  require "teams"
  
  def self.nav_entry
    {
      name: "Games",
      link: -> {::GamesAdmin::Engine.routes.url_helpers.games_path}
    }
  end
end
