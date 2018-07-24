class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = @venue_listing.price.to_i * 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount.price
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  def set_venue_listing
    @venue_listing = Venue_listing.find(params[:venue_listing_id])
  end

  def venue_listing_params
    params.require(:venue_listing).permit(:venue_name, :description, :attendees, :location, :price, :hours, :image, :company_id)
  end


end
