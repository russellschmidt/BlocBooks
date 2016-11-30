class BooksController < BlocWorks::Controller
	def welcome
		@my_book = "Eloquent Ruby"
		render :welcome, book: @my_book
	end

	def index
		render :index, books: Book.all
	end

	def show
		binding.pry
		render :show, book: Book.find(get_book_id)
	end

	def new
		render :new
	end

	def create
		# add to db
		redirect :index
	end

	def edit
		render :edit, book: Book.find(get_book_id)
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