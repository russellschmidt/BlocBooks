require './config/application'
require 'pry'

app = BlocWorks::Application.new

use Rack::ContentType

app.route do
	map "", "books#welcome", default: {"request_method" => "get"}
	# map ":controller/:id/:action", default: {"request_method" => "get"}
	# map ":controller/:id", default: {"action" => "show", "request_method" => "get"}
	# map ":controller", default: {"action" => "index", "request_method" => "get"}
	
	resources :books
end

run(app)