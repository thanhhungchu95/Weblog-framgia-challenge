class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.paginate(page: params[:page])
  end

  def create
    @user = User.new(user_params_limit)
    if @user.save
      log_in @user
      flash[:success] = 'Welcome to Weblog!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def user_params_limit
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,
                                 :sex, :birthday, :address)
  end
end
