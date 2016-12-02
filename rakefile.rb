namespace :db do
	desc 'Seed the database using db/seed.rb'
	task :seed do
		# check if table exists
		if Book.table.nil?
			ruby './db/create_books.rb'
		end

		# add table data only if no data exists
		if Book.all.nil?
			ruby './db/seed.rb'
		else
			puts 'Please run rake db:clear first - data detected'
		end
	end

	desc 'Clears the database'
	task :clear do
		if Book.table
			ruby './db/clear_table.rb'
		end
	end
end