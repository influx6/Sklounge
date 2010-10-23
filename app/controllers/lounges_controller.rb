class LoungesController < ApplicationController
  helper_method :show_Bulletin

  def index
   @bulletins = show_Bulletin
   @static = Static.find_active
   @events = Event.current_events
  end



  protected

  def show_Bulletin
   Bulletin.paginate :page => params[:page], :order => " id DESC"
  end



end

