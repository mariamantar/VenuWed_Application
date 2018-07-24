class WelcomeController < ApplicationController


  def page
    @venue_listings = VenueListing.all
end

def Search
  if params[:q].present? && params[:q].strip != ""
    session[:loc_search] = params[:q]
  end


# if the user wanst to go to a specific location, the show the venues nearby 5 kilometeres away. Otherwise show all the rooms in our database

if session[:loc_search] && session[:loc_search]
  @venue_listings_location = Venue_listing.where(active: true).near(session[:loc_search], 5, order: 'distance')
else
  @venue_listings_location = Venue_listing.where(active: true ).all
end

@search = @venue_listings_location.ransack(params[:q])
@venue_listings = @q.result

@arrVenue_listings = @venue_listings.to_a
end



end
