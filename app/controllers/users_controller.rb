class UsersController < ApplicationController
	before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

def show
    @user = User.find(params[:id])
    @statuses = @user.statuses
  end


 end
  
