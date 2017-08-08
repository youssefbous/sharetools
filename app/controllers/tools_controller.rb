class ToolsController < ApplicationController

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(user_params)
    @tool.save

    redirect_to tools_path
  end

  private

  def user_params
    params.require(:tool).permit(:title, :description, :caracteristics)
  end
end

