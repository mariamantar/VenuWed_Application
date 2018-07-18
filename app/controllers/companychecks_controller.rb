class CompanychecksController < ApplicationController
  before_action :set_companycheck, only: [:show, :edit, :update, :destroy]

  # GET /companychecks
  # GET /companychecks.json
  def index
    @companychecks = Companycheck.all
  end

  # GET /companychecks/1
  # GET /companychecks/1.json
  def show
  end

  # GET /companychecks/new
  def new
    @companycheck = Companycheck.new
  end

  # GET /companychecks/1/edit
  def edit
  end

  # POST /companychecks
  # POST /companychecks.json
  def create
    @companycheck = Companycheck.new(companycheck_params)
    
    respond_to do |format|
      if @companycheck.save
        format.html { redirect_to @companycheck, notice: 'Companycheck was successfully created.' }
        format.json { render :show, status: :created, location: @companycheck }
      else
        format.html { render :new }
        format.json { render json: @companycheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companychecks/1
  # PATCH/PUT /companychecks/1.json
  def update
    respond_to do |format|
      if @companycheck.update(companycheck_params)
        format.html { redirect_to @companycheck, notice: 'Companycheck was successfully updated.' }
        format.json { render :show, status: :ok, location: @companycheck }
      else
        format.html { render :edit }
        format.json { render json: @companycheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companychecks/1
  # DELETE /companychecks/1.json
  def destroy
    @companycheck.destroy
    respond_to do |format|
      format.html { redirect_to companychecks_url, notice: 'Companycheck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companycheck
      @companycheck = Companycheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companycheck_params
      params.require(:companycheck).permit(:iscompany, :user_id)
    end
end
