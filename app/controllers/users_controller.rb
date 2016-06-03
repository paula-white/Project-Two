class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to users_path
    else
      render :new
  end
end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params if user.authenticate( params[:user][:password] )

    redirect_to user
  end

  def destroy
    user = User.find params[:id]
    user.destroy

    redirect_to users_path
  end

  def invite
    @users = User.all
    @sport = Sport.find(params[:sport_id])
  end

  def do_invite
    users = User.find params[:users]
    sport = Sport.find params[:sport_id]
    league = League.find params[:league_id]
    league.users = users
    league.users << @current_user
    league.save
    # binding.pry

    # binding.pry
    #do something useful
    redirect_to leagues_path
  end




private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
  end
end
