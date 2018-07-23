class PagesController < ApplicationController

  # :skip_before_filter :require_no_authentication

  def home
    # if the user is logged in as a company or a customer reidrect to the root path otherwise redirect to the create new company and customer path 
    if((current_user.company) || (current_user.customer))
          redirect_to root_path
    else
      @company = Company.new
      @customer = Customer.new
    end
  end

end
