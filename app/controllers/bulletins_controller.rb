class BulletinsController < ApplicationController
  before_filter :require_user ,:except => []
  
  def index
    @bulletins = Bulletin.all
  end
  
  def show
    @bulletin = Bulletin.find(params[:id])
  end
  
  def new
    @bulletin = Bulletin.new
  end
  
  def create
    @bulletin = Bulletin.new(params[:bulletin])
    if @bulletin.save
      flash[:notice] = "Successfully created bulletin."
      redirect_to @bulletin
    else
      render :action => 'new'
    end
  end
  
  def edit
    @bulletin = Bulletin.find(params[:id])
  end
  
  def update
    @bulletin = Bulletin.find(params[:id])
    if @bulletin.update_attributes(params[:bulletin])
      flash[:notice] = "Successfully updated bulletin."
      redirect_to @bulletin
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @bulletin = Bulletin.find(params[:id])
    @bulletin.destroy
    flash[:notice] = "Successfully destroyed bulletin."
    redirect_to bulletins_url
  end
end
