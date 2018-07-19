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
      post venue_listings_url, params: { venue_listing: { company_id: @venue_listing.company_id, cost: @venue_listing.cost, date: @venue_listing.date, description: @venue_listing.description, image: @venue_listing.image } }
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
    patch venue_listing_url(@venue_listing), params: { venue_listing: { company_id: @venue_listing.company_id, cost: @venue_listing.cost, date: @venue_listing.date, description: @venue_listing.description, image: @venue_listing.image } }
    assert_redirected_to venue_listing_url(@venue_listing)
  end

  test "should destroy venue_listing" do
    assert_difference('VenueListing.count', -1) do
      delete venue_listing_url(@venue_listing)
    end

    assert_redirected_to venue_listings_url
  end
end
