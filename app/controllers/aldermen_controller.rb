class AldermenController < ApplicationController
  before_action :set_alderman, only: [:show, :edit, :update, :destroy]

  # GET /aldermen
  # GET /aldermen.json
  def index
    @aldermen = Alderman.all
  end

  # GET /aldermen/1
  # GET /aldermen/1.json
  def show
  end

  # GET /aldermen/new
  def new
    @alderman = Alderman.new
  end

  # GET /aldermen/1/edit
  def edit
  end

  # POST /aldermen
  # POST /aldermen.json
  def create
    @alderman = Alderman.new(alderman_params)

    respond_to do |format|
      if @alderman.save
        format.html { redirect_to @alderman, notice: 'Alderman was successfully created.' }
        format.json { render :show, status: :created, location: @alderman }
      else
        format.html { render :new }
        format.json { render json: @alderman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aldermen/1
  # PATCH/PUT /aldermen/1.json
  def update
    respond_to do |format|
      if @alderman.update(alderman_params)
        format.html { redirect_to @alderman, notice: 'Alderman was successfully updated.' }
        format.json { render :show, status: :ok, location: @alderman }
      else
        format.html { render :edit }
        format.json { render json: @alderman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aldermen/1
  # DELETE /aldermen/1.json
  def destroy
    @alderman.destroy
    respond_to do |format|
      format.html { redirect_to aldermen_url, notice: 'Alderman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alderman
      @alderman = Alderman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alderman_params
      params.require(:alderman).permit(:ward_id, :start_date, :end_date, :party_affiliation, :user_id)
    end
end
