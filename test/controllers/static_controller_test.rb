require "test_helper"

class StaticControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup 
  @base_title = "ROR Sample App"
  end


  test "Should get hello" do
  	get "http://127.0.0.1:3000/static/hello"
  	assert_response :success
    assert_select "title", "Hello | #{@base_title}"

  end

  test "Should get help" do
  	get "http://127.0.0.1:3000/static/help"
  	assert_response :success
    assert_select "title", "Help | #{@base_title}"

  end

  test "Should get about" do
  	get "http://127.0.0.1:3000/static/about"
  	assert_response :success
    assert_select "title", "About | #{@base_title}"

  end

end
