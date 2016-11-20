class BooksController < BlocWorks::Controller
	def welcome
		render :welcome, book: "Eloquent Ruby"
	end

	def index
		render :index, book: "Eloquent Ruby"
	end

	def show
		# how do we pass in the /:id of the book
		render :show, book: "Eloquent Ruby"
	end

	def new
		render :new
	end

	def create
		# add to db
		redirect :index
	end

	def edit
		# how do we pass in the /:id of the book
		render :edit
	end

	def update
		# how do we pass in the /:id of the book
		# update db
		redirect :index
	end

	def destroy
		# how do we pass in the /:id of the book
		# delete from db
		redirect :index
	end

end