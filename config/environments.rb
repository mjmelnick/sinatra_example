#env = ENV["RACK_ENV"]  ## FIX BEFORE PRODUCTION
env = "development"

YAML::load(File.open("config/database.yml"))[env].symbolize_keys.each do |key, value|
  set key, value
end

ActiveRecord::Base.establish_connection(
  adapter: settings.adapter,
  host: settings.db_host,
  database: settings.db_name,
  username: settings.db_username,
  password: settings.db_password)

