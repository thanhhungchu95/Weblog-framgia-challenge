class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index]

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @entries = @user.entries.paginate(page: params[:page], per_page: 5)
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
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

  private :user_params_limit
end
