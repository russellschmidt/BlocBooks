class LibraryController < BlocWorks::Controller
	def index
		@my_library: "My Library"
		render :index, library: @my_library
	end

	def show
		@my_library: "My Library"
		# how do we pass in the /:id of the book
		render :show, library: @my_library
	end

	def new
		render :new
	end

	def create
		# add to db
		redirect :index
	end

	def edit
		@my_library: "My Library"
		# how do we pass in the /:id of the book
		render :edit, library: @my_library
	end

	def update
		@my_library: "My Library"
		# how do we pass in the /:id of the book
		# update db
		redirect :index
	end

	def destroy
		@my_library: "My Library"
		# how do we pass in the /:id of the book
		# delete from db
		redirect :index
	end

end