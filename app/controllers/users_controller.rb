class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])

    if @user.role == 'premium'
      @user.role = 'standard'
      @user.premium = false
      @user.standard = true

    end
    if @user.save
      flash[:notice] = "User was updated."
    else
      flash.now[:alert] = "There was an error updating the user. Please try again."
      render :edit
    end
  end

end
