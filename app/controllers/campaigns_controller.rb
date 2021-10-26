class CampaignsController < ApplicationController
  before_action :find_campaign, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)

    if @campaign.save
        redirect_to @campaign, notice: "Yessss! It was posted"
    else
      render "new"
    end
  end

  private

  def campaign_params
    params.require(:campaign).permit(:title, :description)
  end

  def find_campaign
    @campaign = Campaign.find(params[:id])
  end


end
