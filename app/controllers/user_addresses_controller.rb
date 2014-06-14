class UserAddressesController < ApplicationController
  before_action :set_user_address, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:new, :create, :edit, :update]
  # GET /user_addresses
  # GET /user_addresses.json
  def index
    @user_addresses = UserAddress.all
  end

  # GET /user_addresses/1
  # GET /user_addresses/1.json
  def show
  end

  # GET /user_addresses/new
  def new
    @user_address = UserAddress.new
  end

  # GET /user_addresses/1/edit
  def edit
  end

  # POST /user_addresses
  # POST /user_addresses.json
  def create
    @user_address = UserAddress.new(user_address_params)

    respond_to do |format|
      if @user_address.save
        format.html { redirect_to @user_address, notice: 'User address was successfully created.' }
        format.json { render :show, status: :created, location: @user_address }
      else
        format.html { render :new }
        format.json { render json: @user_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_addresses/1
  # PATCH/PUT /user_addresses/1.json
  def update
    respond_to do |format|
      if @user_address.update(user_address_params)
        format.html { redirect_to @user_address, notice: 'User address was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_address }
      else
        format.html { render :edit }
        format.json { render json: @user_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_addresses/1
  # DELETE /user_addresses/1.json
  def destroy
    @user_address.destroy
    respond_to do |format|
      format.html { redirect_to user_addresses_url, notice: 'User address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_address
      @user_address = UserAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_address_params
      params.require(:user_address).permit(:ward_id, :user_id, :string, :string, :string)
    end
end
