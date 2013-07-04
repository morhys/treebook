require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login route opens the login page"  do
		get '/login'
		assert_response :success
	end

	test "that /logout route opens the log out page"  do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

	test "that /register route opens the signup page"  do
		get '/register'
		assert_response :success
	end

	test "that a profile page works" do
		get '/mighty_mo'
		assert_response :success
	end
end
