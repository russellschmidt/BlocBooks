class BooksController < BlocWorks::Controller
	def welcome
		@my_book = "Eloquent Ruby"
		render :welcome, book: @my_book
	end

	def index
		render :index, books: Book.all
	end

	def show
		# access env variable and get URI
		# parse env variable to find '?id=1'
		# parse the '1' out 
		# 
		uri = @env["REQUEST_URI"].to_s
		id_query = uri.match(/\?([\w-])+(=[\w-]*)/).to_s
		id = id_query.split('=')[1].to_i
		# now we want to look up the record with id=1
		# then we pass in that database object to render
		render :show, book: Book.find(id)
	end

	def new
		render :new
	end

	def create
		# add to db
		redirect :index
	end

	def edit
		@my_book = "Eloquent Ruby"
		# how do we pass in the /:id of the book
		render :edit, book: @my_book
	end

	def update
		@my_book = "Eloquent Ruby"
		# how do we pass in the /:id of the book
		# update db
		redirect :index
	end

	def destroy
		@my_book = "Eloquent Ruby"
		# how do we pass in the /:id of the book
		# delete from db
		redirect :index
	end

end