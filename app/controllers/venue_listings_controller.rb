class VenueListingsController < ApplicationController
  before_action :set_venue_listing, only: [:show, :edit, :update, :destroy]

  # GET /venue_listings
  # GET /venue_listings.json
  def index
    @venue_listings = VenueListing.all
  end

  # GET /venue_listings/1
  # GET /venue_listings/1.json
  def show
  end

  # GET /venue_listings/new
  def new
    @venue_listing = VenueListing.new
  end

  # GET /venue_listings/1/edit
  def edit
  end

  # POST /venue_listings
  # POST /venue_listings.json
  def create
    @venue_listing = VenueListing.new(venue_listing_params)

    respond_to do |format|
      if @venue_listing.save
        format.html { redirect_to @venue_listing, notice: 'Venue listing was successfully created.' }
        format.json { render :show, status: :created, location: @venue_listing }
      else
        format.html { render :new }
        format.json { render json: @venue_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venue_listings/1
  # PATCH/PUT /venue_listings/1.json
  def update
    respond_to do |format|
      if @venue_listing.update(venue_listing_params)
        format.html { redirect_to @venue_listing, notice: 'Venue listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @venue_listing }
      else
        format.html { render :edit }
        format.json { render json: @venue_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_listings/1
  # DELETE /venue_listings/1.json
  def destroy
    @venue_listing.destroy
    respond_to do |format|
      format.html { redirect_to venue_listings_url, notice: 'Venue listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue_listing
      @venue_listing = VenueListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_listing_params
      params.require(:venue_listing).permit(:image, :description, :cost, :date, :company_id)
    end
end
