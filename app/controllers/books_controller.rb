class BooksController < BlocWorks::Controller
	def welcome
		render :welcome, book: 'Loquacious Ruby'
	end

	def index
		render :index, books: Book.all
	end

	def show
		book = Book.find(params['id'])
		render :show, book: book
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
		render :edit
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