class UsersController < ApplicationController

  before_action :require_user, only: [:edit, :update]

  def index

  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params['id'])
    render "new"
  end

  def show
    @user = User.find(params['id'])
  end



  def create
    @user = User.new(users_params)
    if @user.save
      flash[:success] = "Account registered!"
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @user =User.find(params['id'])
    if @user.update(users_params)
      flash[:success] = "Account Updated!"
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end

  private

  def users_params
    params.require(:user).permit(:bio, :email, :password, :password_confirmation,:profile_picture,:username,:name)
  end
end
