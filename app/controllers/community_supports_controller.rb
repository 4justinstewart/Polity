class CommunitySupportsController < ApplicationController
  before_action :set_community_support, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:new, :create, :edit, :update]
  # GET /community_supports
  # GET /community_supports.json
  def index
    @community_supports = CommunitySupport.all
  end

  # GET /community_supports/1
  # GET /community_supports/1.json
  def show
  end

  # GET /community_supports/new
  def new
    @community_support = CommunitySupport.new
  end

  # GET /community_supports/1/edit
  def edit
  end

  # POST /community_supports
  # POST /community_supports.json
  def create
    @community_support = CommunitySupport.new(community_support_params)

    respond_to do |format|
      if @community_support.save
        format.html { redirect_to @community_support, notice: 'Community support was successfully created.' }
        format.json { render :show, status: :created, location: @community_support }
      else
        format.html { render :new }
        format.json { render json: @community_support.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_supports/1
  # PATCH/PUT /community_supports/1.json
  def update
    respond_to do |format|
      if @community_support.update(community_support_params)
        format.html { redirect_to @community_support, notice: 'Community support was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_support }
      else
        format.html { render :edit }
        format.json { render json: @community_support.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_supports/1
  # DELETE /community_supports/1.json
  def destroy
    @community_support.destroy
    respond_to do |format|
      format.html { redirect_to community_supports_url, notice: 'Community support was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_support
      @community_support = CommunitySupport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_support_params
      params.require(:community_support).permit(:user_id, :legislation_id, :support, :text)
    end
end
