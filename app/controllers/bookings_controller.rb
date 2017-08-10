class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @tool = Tool.new
  end

  # def edit
  #   @tool = Tool.find(params[:id])
  # end

  # def update
  #   @tool = Tool.find(params[:id])
  #   @tool.user = current_user
  #   if @tool.update(tool_params)
  #     redirect_to tool_path(@tool)
  #   else
  #     render 'edit'
  #   end
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @tool = Tool.find(params[:tool_id])
    @booking.tool = @tool

    if @booking.save
      redirect_to tools_path(@tool)
    else
      render 'tools/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
