require 'test_helper'
require 'minitest/pride'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @title = "| Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home #{@title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help #{@title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About #{@title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact #{@title}"
  end

end
