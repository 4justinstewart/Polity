class ApiController < ApplicationController

  def index


     
    render json: aldermanInfo, status: 200 # :ok
  end

  # def create


  #   if issue.save
  #     render json: issue, status: 201 
  #   end
  # end

end
