class LegislationsController < ApplicationController
  before_action :set_legislation, only: [:show, :edit, :update, :destroy]

  # GET /legislations
  # GET /legislations.json
  def index
    @legislations = Legislation.all #this isn't really needed if we're not using the variable in the queries below, right?
    @fresh_legislations = Legislation.where.not("status = ?", "Voted").paginate(page: params[:page], per_page: 8)

    #### THIS STILL NEEDS TO BE REFINED ####
    @voted_legislations = Legislation.where("status = ?", "Voted").paginate(page: params[:page], per_page: 8)

  end

  # GET /legislations/1
  # GET /legislations/1.json
  def show

  end

  # GET /legislations/new
  def new
    @legislation = Legislation.new
  end

  # GET /legislations/1/edit
  def edit
  end

  # POST /legislations
  # POST /legislations.json
  def create
    @legislation = Legislation.new(legislation_params)

    respond_to do |format|
      if @legislation.save
        format.html { redirect_to @legislation, notice: 'Legislation was successfully created.' }
        format.json { render :show, status: :created, location: @legislation }
      else
        format.html { render :new }
        format.json { render json: @legislation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legislations/1
  # PATCH/PUT /legislations/1.json
  def update
    respond_to do |format|
      if @legislation.update(legislation_params)
        format.html { redirect_to @legislation, notice: 'Legislation was successfully updated.' }
        format.json { render :show, status: :ok, location: @legislation }
      else
        format.html { render :edit }
        format.json { render json: @legislation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legislations/1
  # DELETE /legislations/1.json
  def destroy
    @legislation.destroy
    respond_to do |format|
      format.html { redirect_to legislations_url, notice: 'Legislation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legislation
      @legislation = Legislation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legislation_params
      params.require(:legislation).permit(:city_identifier, :status, :type, :opened_date, :closed_date)
    end
end
