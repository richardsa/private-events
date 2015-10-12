class UsersController < ApplicationController
  def new
     @user = User.new
  end
  
  def create
    @user = User.new(user_params)
     if @user.save
      
      flash[:info] = "Registration successful!"
      render 'show'
    else
      render 'new'
    end
  
  end
  
  def show
    @user = User.find(params[:id])
    @upcoming_events = @user.attended_events.upcoming
    @prev_events = @user.attended_events.past
  end
  
  private

    def user_params
      params.require(:user).permit(:username, :email)
    end
end
