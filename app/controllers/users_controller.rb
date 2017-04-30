class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id]= user.id
      redirect_to root_path, notice: 'Thank you for Signing Up!'
    else
      render :new
    end 
  end

  private

  def user_params
    params.required(:user).permit([:first_name,
                                   :last_name,
                                   :email,
                                   :password,
                                   :password_confirmation])
  end
end
