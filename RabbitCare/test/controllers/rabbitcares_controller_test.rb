require 'test_helper'

class RabbitcaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rabbitcare = rabbitcares(:one)
  end

  test "should get index" do
    get rabbitcares_url
    assert_response :success
  end

  test "should get new" do
    get new_rabbitcare_url
    assert_response :success
  end

  test "should create rabbitcare" do
    assert_difference('Rabbitcare.count') do
      post rabbitcares_url, params: { rabbitcare: { addmedicamento: @rabbitcare.addmedicamento, removemedicamento: @rabbitcare.removemedicamento } }
    end

    assert_redirected_to rabbitcare_url(Rabbitcare.last)
  end

  test "should show rabbitcare" do
    get rabbitcare_url(@rabbitcare)
    assert_response :success
  end

  test "should get edit" do
    get edit_rabbitcare_url(@rabbitcare)
    assert_response :success
  end

  test "should update rabbitcare" do
    patch rabbitcare_url(@rabbitcare), params: { rabbitcare: { addmedicamento: @rabbitcare.addmedicamento, removemedicamento: @rabbitcare.removemedicamento } }
    assert_redirected_to rabbitcare_url(@rabbitcare)
  end

  test "should destroy rabbitcare" do
    assert_difference('Rabbitcare.count', -1) do
      delete rabbitcare_url(@rabbitcare)
    end

    assert_redirected_to rabbitcares_url
  end
end
