require_relative '../app/models/book'
require 'bloc_record'

db = BlocRecord.connect_to("db/db.sqlite")

db.execute <<-SQL
	DELETE * FROM book;
SQL