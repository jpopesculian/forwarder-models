module Db
  class Connection
    def self.call(&block)
      Db::Connect.().with_connection do |connection|
        conn = connection.instance_variable_get(:@connection)
        block.call(conn)
      end
    end
  end
end
