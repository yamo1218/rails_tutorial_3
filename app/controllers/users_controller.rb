class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # 保存の成功をここで扱う。
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
