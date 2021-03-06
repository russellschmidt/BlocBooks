require_relative './config/application'
require 'test/unit'
require 'rack/test'


class BlocBooksTest < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		BlocBooks::Application.new
	end

	def test_books_welcome
		get '/books/welcome'
		assert last_response.ok?
		books_welcome_body = "<div>\n\t<p>Welcome to BlocBooks!</p>\n\t<p>Please start by reading Eloquent Ruby</p>\n</div>"
		
		assert_equal books_welcome_body, last_response.body
		assert last_response.body.include?('Eloquent Ruby')
	end

	def test_books_index
		get '/books'
		assert last_response.ok?
		assert last_response.body.include?('Eloquent Ruby')
		assert_equal 'http://example.org/books', last_request.url
	end

	def test_books_show
		id = 1
		get '/books/#{id}'
		assert last_response.ok?
		assert last_response.body.include?('#{books[id][:title]}')
		assert_equal 'http://example.org/books/#{id}', last_request.url
	end

	def test_books_new
		get '/books/new'
		assert last_response.ok?
		assert last_response.body.include?('<form id="book_form">')
		assert_equal 'http://example.org/books/new', last_request.url
	end

	def test_books_create
		old_count = books.count
		post '/books'
		assert last_response.ok?
		assert_equal books.count, old_count + 1

		follow_redirect!
		assert_equal 'http://example.org/books', last_request.url
	end

	def test_books_edit
		id = 1
		get '/books/#{id}/edit'
		assert last_response.ok?
		assert last_response.body.include?('<form id="book_form">')
		assert_equal 'http://example.org/#{id}/edit', last_request.url
	end

	def test_books_update
		id = 1 
		put '/books/#{id}'
		assert last_response.ok?
		assert_equal books.count, old_count

		follow_redirect!
		assert_equal 'http://example.org/books', last_request.url
	end

	def test_books_destroy
		id = 1
		old_count = books.count
		delete '/books/#{id}'
		assert last_response.ok?
		assert_equal books.count, old_count - 1

		follow_redirect!
		assert_equal 'http://example.org/books', last_request.url
	end

	# LIBRARY class 
	# Tests for controller actions

	def test_library_index
		get '/library'
		assert last_response.ok?
		assert last_response.body.include?('My Library')
		assert_equal 'http://example.org/library', last_request.url
	end

	def test_library_show
		id = 1
		get '/library/#{id}'
		assert last_response.ok?
		assert last_response.body.include?('#{library[id][:title]}')
		assert_equal 'http://example.org/library/#{id}', last_request.url
	end

	def test_library_new
		get '/library/new'
		assert last_response.ok?
		assert last_response.body.include?('<form id="library_form">')
		assert_equal 'http://example.org/library/new', last_request.url
	end

	def test_library_create
		old_count = library.count
		post '/library'
		assert last_response.ok?
		assert_equal library.count, old_count + 1

		follow_redirect!
		assert_equal 'http://example.org/library', last_request.url
	end

	def test_library_edit
		id = 1
		get '/library/#{id}/edit'
		assert last_response.ok?
		assert last_response.body.include?('<form id="library_form">')
		assert_equal 'http://example.org/#{id}/edit', last_request.url
	end

	def test_library_update
		id = 1 
		put '/library/#{id}'
		assert last_response.ok?
		assert_equal library.count, old_count

		follow_redirect!
		assert_equal 'http://example.org/library', last_request.url
	end

	def test_library_destroy
		id = 1
		old_count = library.count
		delete '/library/#{id}'
		assert last_response.ok?
		assert_equal library.count, old_count - 1

		follow_redirect!
		assert_equal 'http://example.org/library', last_request.url
	end

end