class UsersController < ApplicationController

  def update
    @user = User.find(params[:id])
    @user.role = params[:user][:role]
    if @user.role == 'premium'
      current_user.role = 'standard'
      current_user.premium = false
      current_user.standard = true
      @user.save
    end
    if @user.save
      flash[:notice] = "User was updated."
      redirect_to @user
    else
      flash.now[:alert] = "There was an error updating the user. Please try again."
      render :edit
  end

end
