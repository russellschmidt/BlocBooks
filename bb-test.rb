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
	end

	def test_books_show
		get '/books/#{id}'
	end

	def test_books_new
		get '/books/new'
	end

	def test_books_create
		post '/books'
	end

	def test_books_edit
		get '/books/#{id}/edit'
	end

	def test_books_update
		put '/books/#{id}'
	end

	def test_books_delete
		delete '/books/#{id}'
	end

end