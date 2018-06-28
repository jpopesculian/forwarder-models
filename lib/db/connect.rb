module Db
  module Connect
    def self.call
      ActiveRecord::Base.establish_connection(Config.())
    end
  end
end
