class CommunityMemberVotePositionsController < ApplicationController
  before_action :set_community_member_vote_position, only: [:show, :edit, :update, :destroy]

  # GET /community_member_vote_positions
  # GET /community_member_vote_positions.json
  def index
    @community_member_vote_positions = CommunityMemberVotePosition.all
  end

  # GET /community_member_vote_positions/1
  # GET /community_member_vote_positions/1.json
  def show
  end

  # GET /community_member_vote_positions/new
  def new
    @community_member_vote_position = CommunityMemberVotePosition.new
  end

  # GET /community_member_vote_positions/1/edit
  def edit
  end

  # POST /community_member_vote_positions
  # POST /community_member_vote_positions.json
  def create
    @community_member_vote_position = CommunityMemberVotePosition.new(community_member_vote_position_params)

    respond_to do |format|
      if @community_member_vote_position.save
        format.html { redirect_to @community_member_vote_position, notice: 'Community member vote position was successfully created.' }
        format.json { render :show, status: :created, location: @community_member_vote_position }
      else
        format.html { render :new }
        format.json { render json: @community_member_vote_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_member_vote_positions/1
  # PATCH/PUT /community_member_vote_positions/1.json
  def update
    respond_to do |format|
      if @community_member_vote_position.update(community_member_vote_position_params)
        format.html { redirect_to @community_member_vote_position, notice: 'Community member vote position was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_member_vote_position }
      else
        format.html { render :edit }
        format.json { render json: @community_member_vote_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_member_vote_positions/1
  # DELETE /community_member_vote_positions/1.json
  def destroy
    @community_member_vote_position.destroy
    respond_to do |format|
      format.html { redirect_to community_member_vote_positions_url, notice: 'Community member vote position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_member_vote_position
      @community_member_vote_position = CommunityMemberVotePosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_member_vote_position_params
      params.require(:community_member_vote_position).permit(:agree, :feedback)
    end
end
