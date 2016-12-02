class BooksController < BlocWorks::Controller
	def welcome
		render :welcome, book: 'Loquacious Ruby'
	end

	def index
		render :index, books: Book.all
	end

	def show
<<<<<<< HEAD
		book = Book.find(params['id'])
		render :show, book: book
=======
		binding.pry
		render :show, book: Book.find(get_book_id)
>>>>>>> arch_3
	end

	def new
		render :new
	end

	def create
		# add to db
		redirect :index
	end

	def edit
<<<<<<< HEAD
		@my_book = "Eloquent Ruby"
		# how do we pass in the /:id of the book
		render :edit
=======
		render :edit, book: Book.find(get_book_id)
>>>>>>> arch_3
	end

	def update
		@id = Book.find(get_book_id)
		
		# update db
		redirect :index
	end

	def destroy
		@id = Book.find(get_book_id)
		
		# delete from db
		redirect :index
	end

	private

	def get_book_id
		# access env variable and get URI
		# parse env variable to find '?id=1'
		# parse the '1' out 
		uri = @env["REQUEST_URI"].to_s
		id_query = uri.match(/\?([\w-])+(=[\w-]*)/).to_s
		id_query.split('=')[1].to_i
	end

end