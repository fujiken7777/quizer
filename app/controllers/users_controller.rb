class UsersController < ApplicationController


  # def create
  #   User.create(user_params)
  # end

  def show
    @user = User.find(params[:id])
    @users = @user.user_image.url
    @nickname = current_user.nickname
    @quizzes = current_user.quizzes
    
  end


  private
  def user_params
    params.require(:user).permit(:nickname, :email, :user_image)
  end
end
