class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      sign_in(@user)
      flash[:notice] = 'Logged in!'
      redirect_to projects_path
    else
      flash[:notice] = 'Invalid login'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Signed out'
    redirect_to projects_path
  end
end
