require 'db'
require 'pg'

db = Db::Connect.()
settings = Db::Config.().as_json.symbolize_keys

connected = false
connection_attempts = 5
last_error = nil

while connection_attempts > 0 && !connected
  puts "Attempting connection to #{settings[:database]}@#{settings[:host]}:#{settings[:port]}"
  begin
    db.connection
    connected = true
  rescue ActiveRecord::NoDatabaseError => error
    master_settings = settings
      .slice(:host, :port, :hostaddr, :user, :password)
      .merge(dbname: "postgres")
    conn = PG.connect(master_settings)
    conn.exec("CREATE DATABASE #{settings[:database]}")
    puts "Database #{settings[:database]} created!"
  rescue Exception => error
    connection_attempts -= 1
    last_error = error
    sleep 1
  end
end

unless connected
  raise last_error
end

puts "Connected!"


db.disconnect!
