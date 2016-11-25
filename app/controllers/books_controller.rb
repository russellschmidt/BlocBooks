class BooksController < BlocWorks::Controller
	def welcome
		@my_book = "Eloquent Ruby"
		render :welcome, book: @my_book
	end

	def index
		render :index, books: Book.all
	end

	def show
		@my_book = "Eloquent Ruby"
		# how do we pass in the /:id of the book
		render :show, book: @my_book
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