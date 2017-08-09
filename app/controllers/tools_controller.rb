class ToolsController < ApplicationController
  # GET /tools?query=bouilloire
  def index
    @tools = Tool.where("title ilike ?", "%#{params[:query]}%")
  end

  def new
    @tool = Tool.new
  end

  def show
    @tool = Tool.find(params[:id])
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
