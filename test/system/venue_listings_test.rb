require "application_system_test_case"

class VenueListingsTest < ApplicationSystemTestCase
  setup do
    @venue_listing = venue_listings(:one)
  end

  test "visiting the index" do
    visit venue_listings_url
    assert_selector "h1", text: "Venue Listings"
  end

  test "creating a Venue listing" do
    visit venue_listings_url
    click_on "New Venue Listing"

    fill_in "Attendees", with: @venue_listing.attendees
    fill_in "Company", with: @venue_listing.company_id
    fill_in "Description", with: @venue_listing.description
    fill_in "Hours", with: @venue_listing.hours
    fill_in "Image", with: @venue_listing.image
    fill_in "Location", with: @venue_listing.location
    fill_in "Price", with: @venue_listing.price
    fill_in "Venue Name", with: @venue_listing.venue_name
    click_on "Create Venue listing"

    assert_text "Venue listing was successfully created"
    click_on "Back"
  end

  test "updating a Venue listing" do
    visit venue_listings_url
    click_on "Edit", match: :first

    fill_in "Attendees", with: @venue_listing.attendees
    fill_in "Company", with: @venue_listing.company_id
    fill_in "Description", with: @venue_listing.description
    fill_in "Hours", with: @venue_listing.hours
    fill_in "Image", with: @venue_listing.image
    fill_in "Location", with: @venue_listing.location
    fill_in "Price", with: @venue_listing.price
    fill_in "Venue Name", with: @venue_listing.venue_name
    click_on "Update Venue listing"

    assert_text "Venue listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Venue listing" do
    visit venue_listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Venue listing was successfully destroyed"
  end
end
