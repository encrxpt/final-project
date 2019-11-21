require 'test_helper'

class CustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get customer_name:string_url
    assert_response :success
  end

  test "should get email:string" do
    get customer_email:string_url
    assert_response :success
  end

  test "should get phone:string" do
    get customer_phone:string_url
    assert_response :success
  end

  test "should get address:string" do
    get customer_address:string_url
    assert_response :success
  end

  test "should get province:references" do
    get customer_province:references_url
    assert_response :success
  end

end
