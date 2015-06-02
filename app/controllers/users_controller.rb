class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      flash[:success] = "Profile Updated!"
      render :show
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :cohort, :employer, :job_title, :quirk, :advice_tweet)
  end

end
