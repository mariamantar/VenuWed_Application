require "application_system_test_case"

class CompanychecksTest < ApplicationSystemTestCase
  setup do
    @companycheck = companychecks(:one)
  end

  test "visiting the index" do
    visit companychecks_url
    assert_selector "h1", text: "Companychecks"
  end

  test "creating a Companycheck" do
    visit companychecks_url
    click_on "New Companycheck"

    fill_in "Iscompany", with: @companycheck.iscompany
    fill_in "User", with: @companycheck.user_id
    click_on "Create Companycheck"

    assert_text "Companycheck was successfully created"
    click_on "Back"
  end

  test "updating a Companycheck" do
    visit companychecks_url
    click_on "Edit", match: :first

    fill_in "Iscompany", with: @companycheck.iscompany
    fill_in "User", with: @companycheck.user_id
    click_on "Update Companycheck"

    assert_text "Companycheck was successfully updated"
    click_on "Back"
  end

  test "destroying a Companycheck" do
    visit companychecks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Companycheck was successfully destroyed"
  end
end
