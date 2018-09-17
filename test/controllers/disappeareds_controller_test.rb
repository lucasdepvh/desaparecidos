require 'test_helper'

class DisappearedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disappeared = disappeareds(:one)
  end

  test "should get index" do
    get disappeareds_url
    assert_response :success
  end

  test "should get new" do
    get new_disappeared_url
    assert_response :success
  end

  test "should create disappeared" do
    assert_difference('Disappeared.count') do
      post disappeareds_url, params: { disappeared: { age: @disappeared.age, birthdate: @disappeared.birthdate, dad: @disappeared.dad, date_desapearence: @disappeared.date_desapearence, mother: @disappeared.mother, name: @disappeared.name, sex: @disappeared.sex, street_id: @disappeared.street_id, user_id: @disappeared.user_id } }
    end

    assert_redirected_to disappeared_url(Disappeared.last)
  end

  test "should show disappeared" do
    get disappeared_url(@disappeared)
    assert_response :success
  end

  test "should get edit" do
    get edit_disappeared_url(@disappeared)
    assert_response :success
  end

  test "should update disappeared" do
    patch disappeared_url(@disappeared), params: { disappeared: { age: @disappeared.age, birthdate: @disappeared.birthdate, dad: @disappeared.dad, date_desapearence: @disappeared.date_desapearence, mother: @disappeared.mother, name: @disappeared.name, sex: @disappeared.sex, street_id: @disappeared.street_id, user_id: @disappeared.user_id } }
    assert_redirected_to disappeared_url(@disappeared)
  end

  test "should destroy disappeared" do
    assert_difference('Disappeared.count', -1) do
      delete disappeared_url(@disappeared)
    end

    assert_redirected_to disappeareds_url
  end
end
