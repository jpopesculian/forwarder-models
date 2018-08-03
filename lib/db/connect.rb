module Db
  module Connect
    def self.call
      @@connection ||= ActiveRecord::Base.establish_connection(Config.())
    end
  end
end
