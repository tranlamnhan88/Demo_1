require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_setup = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title","Home | #{@base_setup}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title","Help | #{@base_setup}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_setup}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_setup}"
  end
end
