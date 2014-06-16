class HomeController < ApplicationController
before_filter :authenticate_user!, :except => [:index, :new] # Devise
# By adding the code above, your Rails application will run the controller filter, which is executed before executing all the actions defined in the controller. You can also modify the filter so that it will be executed only for all actions using :only or :except code.

  def index

  end

  private

  # # Use callbacks to share common setup or constraints between actions.
  # def set_user
  #   @user = User.find(params[:id])
  # end

  # # Never trust parameters from the scary internet, only allow the white list through.
  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :user_address_id, :avatar)
  # end

end
