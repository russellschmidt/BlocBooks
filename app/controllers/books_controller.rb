class BooksController < BlocWorks::Controller
	def welcome
		# render :welcome, book: 'Loquacious Ruby'
		# redirect_to 'library#index'
		# redirect_to :index
		redirect_to 'http://www.google.com'
	end

	def index
		render books: Book.all
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
		redirect_to :index
	end

	def edit
		render :edit, book: Book.find(get_book_id)
	end

	def update
		@id = Book.find(get_book_id)
		
		# update db
		redirect_to :index
	end

	def destroy
		@id = Book.find(get_book_id)
		
		# delete from db
		redirect_to :index
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