class SessionsController < ApplicationController
  def new
  end

  def create
   if  !params[:name] || params[:name].empty?
     redirect_to '/sessions/new'
   else 
    session[:name] = params[:name]
    redirect_to '/'
   end 
    
     
  end 

  def destroy
    session.delete :name
  end 
end
