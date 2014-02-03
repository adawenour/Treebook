class UsersController < ApplicationController
	before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @user = User.all
  end

def show
    @user = User.find(params[:id])
    @statuses = @user.statuses
  end

private
def user_params
      params.require(:user).permit(:avatar, :image, :follow)
    end

 def create
  @user = User.create(user_params)
end


def follow
    @user = User.find(params[:id])
    current_user.follow(@user)
    redirect_to :back
  end
 end
  
