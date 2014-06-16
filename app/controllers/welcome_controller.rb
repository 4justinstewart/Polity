class WelcomeController < ApplicationController
  def index
      if user_signed_in? ### this needs to redirect to user dashboard
          redirect_to '/'
      else
          redirect_to '/'
      end
  end
end

















