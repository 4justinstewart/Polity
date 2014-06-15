class LegislationVoicesController < ApplicationController
  before_action :set_legislation_voice, only: [:show, :edit, :update, :destroy]

  def up
    unless current_user.legislation_voices.find_by(:user_id => current_user.id, :legislation_id => params[:legislation_id] )
      @legislation_voice = current_user.legislation_voices.new(:legislation_id => params[:legislation_id], :support => true)

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
    redirect_to current_user.ward.legislator
  end

  def down
    unless current_user.legislation_voices.find_by(:user_id => current_user.id, :legislation_id => params[:legislation_id] )
      @legislation_voice = current_user.legislation_voices.new(:legislation_id => params[:legislation_id], :support => false)

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
    redirect_to current_user.ward.legislator
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
