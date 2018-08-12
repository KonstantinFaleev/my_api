require 'test_helper'

class MonkeysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monkey = monkeys(:one)
  end

  test "should get index" do
    get monkeys_url, as: :json
    assert_response :success
  end

  test "should create monkey" do
    assert_difference('Monkey.count') do
      post monkeys_url, params: { monkey: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show monkey" do
    get monkey_url(@monkey), as: :json
    assert_response :success
  end

  test "should update monkey" do
    patch monkey_url(@monkey), params: { monkey: {  } }, as: :json
    assert_response 200
  end

  test "should destroy monkey" do
    assert_difference('Monkey.count', -1) do
      delete monkey_url(@monkey), as: :json
    end

    assert_response 204
  end
end
