class WelcomeController < ApplicationController
  def page
    @venue_listings = VenueListing.all
  
end

end
