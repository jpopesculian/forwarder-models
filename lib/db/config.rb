require "settings"

module Db
  module Config
    def self.call
      settings.get
    end

    def self.settings
      Settings.build('settings/db.json')
    end

    def self.admin
      settings.get.merge({'database' => 'postgres', 'schema_search_path' => 'public'})
    end
  end
end
