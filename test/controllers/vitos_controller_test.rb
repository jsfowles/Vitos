require 'test_helper'

class VitosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vito = vitos(:one)
  end

  test "should get index" do
    get vitos_url
    assert_response :success
  end

  test "should get new" do
    get new_vito_url
    assert_response :success
  end

  test "should create vito" do
    assert_difference('Vito.count') do
      post vitos_url, params: { vito: { time: @vito.time, updates: @vito.updates } }
    end

    assert_redirected_to vito_url(Vito.last)
  end

  test "should show vito" do
    get vito_url(@vito)
    assert_response :success
  end

  test "should get edit" do
    get edit_vito_url(@vito)
    assert_response :success
  end

  test "should update vito" do
    patch vito_url(@vito), params: { vito: { time: @vito.time, updates: @vito.updates } }
    assert_redirected_to vito_url(@vito)
  end

  test "should destroy vito" do
    assert_difference('Vito.count', -1) do
      delete vito_url(@vito)
    end

    assert_redirected_to vitos_url
  end
end
