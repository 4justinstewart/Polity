class LegislationVoicesController < ApplicationController
  before_action :set_legislation_voice, only: [:show, :edit, :update, :destroy]

  # GET /legislation_voices
  # GET /legislation_voices.json
  def index
    @legislation_voices = LegislationVoice.all
  end

  # GET /legislation_voices/1
  # GET /legislation_voices/1.json
  def show
  end

  # GET /legislation_voices/new
  def new
    @legislation_voice = LegislationVoice.new
  end

  # GET /legislation_voices/1/edit
  def edit
  end

  # POST /legislation_voices
  # POST /legislation_voices.json
  def create
    @legislation_voice = LegislationVoice.new(legislation_voice_params)

    respond_to do |format|
      if @legislation_voice.save
        format.html { redirect_to @legislation_voice, notice: 'Legislation voice was successfully created.' }
        format.json { render :show, status: :created, location: @legislation_voice }
      else
        format.html { render :new }
        format.json { render json: @legislation_voice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legislation_voices/1
  # PATCH/PUT /legislation_voices/1.json
  def update
    respond_to do |format|
      if @legislation_voice.update(legislation_voice_params)
        format.html { redirect_to @legislation_voice, notice: 'Legislation voice was successfully updated.' }
        format.json { render :show, status: :ok, location: @legislation_voice }
      else
        format.html { render :edit }
        format.json { render json: @legislation_voice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legislation_voices/1
  # DELETE /legislation_voices/1.json
  def destroy
    @legislation_voice.destroy
    respond_to do |format|
      format.html { redirect_to legislation_voices_url, notice: 'Legislation voice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legislation_voice
      @legislation_voice = LegislationVoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legislation_voice_params
      params.require(:legislation_voice).permit(:user_id, :legislation_id, :support, :feedback)
    end
end
