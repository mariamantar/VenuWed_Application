require 'test_helper'

class VenueListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @venue_listing = venue_listings(:one)
  end

  test "should get index" do
    get venue_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_venue_listing_url
    assert_response :success
  end

  test "should create venue_listing" do
    assert_difference('VenueListing.count') do
      post venue_listings_url, params: { venue_listing: { attendees: @venue_listing.attendees, company_id: @venue_listing.company_id, description: @venue_listing.description, hours: @venue_listing.hours, image: @venue_listing.image, location: @venue_listing.location, price: @venue_listing.price, venue_name: @venue_listing.venue_name } }
    end

    assert_redirected_to venue_listing_url(VenueListing.last)
  end

  test "should show venue_listing" do
    get venue_listing_url(@venue_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_venue_listing_url(@venue_listing)
    assert_response :success
  end

  test "should update venue_listing" do
    patch venue_listing_url(@venue_listing), params: { venue_listing: { attendees: @venue_listing.attendees, company_id: @venue_listing.company_id, description: @venue_listing.description, hours: @venue_listing.hours, image: @venue_listing.image, location: @venue_listing.location, price: @venue_listing.price, venue_name: @venue_listing.venue_name } }
    assert_redirected_to venue_listing_url(@venue_listing)
  end

  test "should destroy venue_listing" do
    assert_difference('VenueListing.count', -1) do
      delete venue_listing_url(@venue_listing)
    end

    assert_redirected_to venue_listings_url
  end
end
