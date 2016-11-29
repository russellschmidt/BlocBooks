namespace :db do
	desc 'Seed the database using db/seed.rb'
	task :seed do
		# check if table exists
		ruby './db/create_books.rb'
		# clear table data
		ruby './db/seed.rb'
	end
end