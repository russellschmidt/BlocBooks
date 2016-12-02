require '../bloc_works/lib/bloc_works'
# $ bundle exec rackup -p 3000

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module BlocBooks
	class Application < BlocWorks::Application
	end
end