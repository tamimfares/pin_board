class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)

    if @pin.save
      flash[:notice] = "Pin Created Successfully!"
      redirect_to @pin
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private
    def pin_params
      params.require(:pin).permit(:title, :description)
    end

    def set_pin
      @pin = Pin.find(params[:id])
    end


end
