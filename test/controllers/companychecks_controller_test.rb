require 'test_helper'

class CompanychecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companycheck = companychecks(:one)
  end

  test "should get index" do
    get companychecks_url
    assert_response :success
  end

  test "should get new" do
    get new_companycheck_url
    assert_response :success
  end

  test "should create companycheck" do
    assert_difference('Companycheck.count') do
      post companychecks_url, params: { companycheck: { iscompany: @companycheck.iscompany, user_id: @companycheck.user_id } }
    end

    assert_redirected_to companycheck_url(Companycheck.last)
  end

  test "should show companycheck" do
    get companycheck_url(@companycheck)
    assert_response :success
  end

  test "should get edit" do
    get edit_companycheck_url(@companycheck)
    assert_response :success
  end

  test "should update companycheck" do
    patch companycheck_url(@companycheck), params: { companycheck: { iscompany: @companycheck.iscompany, user_id: @companycheck.user_id } }
    assert_redirected_to companycheck_url(@companycheck)
  end

  test "should destroy companycheck" do
    assert_difference('Companycheck.count', -1) do
      delete companycheck_url(@companycheck)
    end

    assert_redirected_to companychecks_url
  end
end
