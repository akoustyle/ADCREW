class CampaignsController < ApplicationController

  def index
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
  end

  private

  def campaign_params
    params.require(:campaign).permit(:title, :description)
  end


end
