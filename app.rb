require "sinatra"
require "sinatra/activerecord"
require "./config/environments"
require "./models/app"

get "/" do
	erb :index
end

post "/submit" do
	@app = App.new(params[:app])
	if @app.save
		redirect "/apps"
	else
		"Sorry, there was an error!"
	end
end

get "/apps" do
	@apps = App.all
	erb :apps
end
