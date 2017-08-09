class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def show
    @tool = Tool.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    @tool.user = current_user
    if @tool.update(tool_params)
      redirect_to tool_path(@tool)
    else
      render 'edit'
    end
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user

    if @tool.save
      redirect_to tool_path(@tool)
    else
      render 'new'
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:title, :description, :caracteristics, :price_per_day)
  end
end
