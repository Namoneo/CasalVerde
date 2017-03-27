class Admin::SeasonsController < Admin::BaseController
  def index
    @seasons = Season.all
  end

  def new
    @season = Season.new
  end

  def create

  end
  
  def destroy

  end
end
