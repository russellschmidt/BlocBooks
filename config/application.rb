require '../bloc_works/lib/bloc_works'
# $ bundle exec rackup -p 3000

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
# load the models too
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "models")

BlocRecord.connect_to("db/db.sqlite")

module BlocBooks
	class Application < BlocWorks::Application
	end
end