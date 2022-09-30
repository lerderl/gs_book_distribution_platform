class RegionsController < ApplicationController
  before_action :require_admin, except: [:index, :show]

  def new
    @region = Region.new
  end

  def index
  end

  def show
    @region = Region.find(params[:id])
  end

  def create
    @region = Region.new(region_params)
    if @region.save
      flash[:notice] = "Group/Region was successfully created"
      redirect_to @region
    else
      render 'new'
    end
  end

  def edit
    @region = Region.find(params[:id])
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(region_params)
      flash[:notice] = "Group/Region name updated successfully"
      redirect_to @region
    else
      render 'edit'
    end
  end

  private

  def region_params
    params.require(:region).permit(:region)
  end

  def require_admin
    if !(logged_in? && current_user.admin?)
      flash[:alert] = "Only admins can perform that action"
      redirect_to regions_path
    end
  end
end
