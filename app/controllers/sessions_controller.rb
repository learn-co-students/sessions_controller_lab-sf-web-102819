class SessionsController < ApplicationController
  def new
    
  end

  def create
    if params[:name] == nil || params[:name].length == 0
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
    # byebug
  end

  def destroy
      session.delete :name
  end
end
