class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :index
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email, :user_image)
  end
end
