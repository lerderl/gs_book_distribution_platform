class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update]

  def show
  end

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end
   
  def create 
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      flash[:notice] = "Group/Region was added successfully."
      redirect_to @group
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      flash[:notice] = "Group/Region was updated successfully."
      redirect_to @group
    else
      render 'edit'
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:region, :price, :qty_allotted, :amt_allotted, :qty_paid, :amt_paid, :qty_bal, :amt_bal)
  end
end
