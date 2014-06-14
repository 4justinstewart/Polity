class LegislationSponsorsController < ApplicationController
  before_action :set_legislation_sponsor, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:new, :create, :edit, :update]
  # GET /legislation_sponsors
  # GET /legislation_sponsors.json
  def index
    @legislation_sponsors = LegislationSponsor.all
  end

  # GET /legislation_sponsors/1
  # GET /legislation_sponsors/1.json
  def show
  end

  # GET /legislation_sponsors/new
  def new
    @legislation_sponsor = LegislationSponsor.new
  end

  # GET /legislation_sponsors/1/edit
  def edit
  end

  # POST /legislation_sponsors
  # POST /legislation_sponsors.json
  def create
    @legislation_sponsor = LegislationSponsor.new(legislation_sponsor_params)

    respond_to do |format|
      if @legislation_sponsor.save
        format.html { redirect_to @legislation_sponsor, notice: 'Legislation sponsor was successfully created.' }
        format.json { render :show, status: :created, location: @legislation_sponsor }
      else
        format.html { render :new }
        format.json { render json: @legislation_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legislation_sponsors/1
  # PATCH/PUT /legislation_sponsors/1.json
  def update
    respond_to do |format|
      if @legislation_sponsor.update(legislation_sponsor_params)
        format.html { redirect_to @legislation_sponsor, notice: 'Legislation sponsor was successfully updated.' }
        format.json { render :show, status: :ok, location: @legislation_sponsor }
      else
        format.html { render :edit }
        format.json { render json: @legislation_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legislation_sponsors/1
  # DELETE /legislation_sponsors/1.json
  def destroy
    @legislation_sponsor.destroy
    respond_to do |format|
      format.html { redirect_to legislation_sponsors_url, notice: 'Legislation sponsor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legislation_sponsor
      @legislation_sponsor = LegislationSponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legislation_sponsor_params
      params.require(:legislation_sponsor).permit(:legislator_id, :legislation_id)
    end
end
