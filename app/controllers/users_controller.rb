class UsersController < ApplicationController
 before_filter :require_user, :only => [:index,:new, :create,:show, :edit, :update,:destroy]

  def index
   @users = User.all
   @static = Static.all
  end

  def new
    @user = User.new
  end

  def show
  @user=User.find params[:id]
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
     if @user.save
      flash[:notice] = "Account Registrationed."
      format.html{ redirect_to users_url }
    else
      format.html{ render :action => 'new' }
    end
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account Updated."
      redirect_to users_url
    else
      render :action => 'edit'
    end
  end

  def destroy
  @user=User.find params[:id]
  @user.destroy
  redirect_to users_url
  end

end

