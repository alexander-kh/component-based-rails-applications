require "slim-rails"
require "jquery-rails"

require "web_ui"

module TeamsAdmin
  require "teams_admin/engine"
  require "teams"
  
  def self.nav_entry
    {
      name: "Teams",
      link: -> {::TeamsAdmin::Engine.routes.url_helpers.teams_path}
    }
  end
end
