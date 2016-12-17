require './config/application'
require 'pry'

app = BlocWorks::Application.new

use Rack::ContentType

app.route do
	map "", "books#welcome"
	map ":controller/:id/:action"
	map ":controller/:id", default: {"action" => "show"}
	map ":controller", default: {"action" => "index"}
	
	resources :books
end

run(app)