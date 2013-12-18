require 'test_helper'

class HomeControllerTest < ActionController::TestCase
	setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "card likes increase" do
  	assert_difference('Card.find(@card).likes') do
  		get :like, id: @card
  	end
  end
end
