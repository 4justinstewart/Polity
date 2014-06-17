class CommunityMeetingsController < ApplicationController
  before_action :set_community_meeting, only: [:show, :edit, :update, :destroy]

  # GET /community_meetings/1
  # GET /community_meetings/1.json
  def show
  end

  # GET /community_meetings/new
  def new
    @community_meeting = CommunityMeeting.new
  end

  # GET /community_meetings/1/edit
  def edit
  end

  # POST /community_meetings
  # POST /community_meetings.json
  def create
    @community_meeting = current_user.created_meetings.new(community_meeting_params)
    @community_meeting.ward_id = current_user.ward.id

    respond_to do |format|
      if @community_meeting.save
        format.html { redirect_to @community_meeting.ward, notice: 'Community meeting was successfully created.' }
        format.json { render :show, status: :created, location: @community_meeting }
      else
        format.html { render :new }
        format.json { render json: @community_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_meetings/1
  # PATCH/PUT /community_meetings/1.json
  def update
    respond_to do |format|
      if @community_meeting.update(community_meeting_params)
        format.html { redirect_to @community_meeting, notice: 'Community meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_meeting }
      else
        format.html { render :edit }
        format.json { render json: @community_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_meetings/1
  # DELETE /community_meetings/1.json
  def destroy
    @community_meeting.destroy
    respond_to do |format|
      format.html { redirect_to community_meetings_url, notice: 'Community meeting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_meeting
      @community_meeting = CommunityMeeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_meeting_params
      params.require(:community_meeting).permit(:creator_id, :address, :time_at, :topic, :ward_id)
    end
end
