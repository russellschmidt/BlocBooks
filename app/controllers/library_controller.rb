class LibraryController < BlocWorks::Controller
	def index
		render :index, library: "My Library"
	end

	def show
		# how do we pass in the /:id of the book
		render :show, library: "My Library"
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
		render :edit, library: "My Library"
	end

	def update
		library: "My Library"
		# how do we pass in the /:id of the book
		# update db
		redirect :index
	end

	def destroy
		library: "My Library"
		# how do we pass in the /:id of the book
		# delete from db
		redirect :index
	end

end