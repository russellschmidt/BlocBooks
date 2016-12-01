class BooksController < BlocWorks::Controller
	def welcome

		@book = 'Eloqueef Ruby'
		render :welcome
	end

	def index
		@my_book = "Eloquent Ruby"
		render :index
	end

	def show
		@my_book = "Eloquent Ruby"
		render :show
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