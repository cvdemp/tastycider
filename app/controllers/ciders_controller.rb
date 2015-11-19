class CidersController < ApplicationController

  def index
    @ciders = Cider.all
  end

  def new
    @cider = Cider.new
  end

  def create
    @cider = Cider.new(cider_params)
    if @cider.save
      flash[:notice] = 'Cider added!'
      redirect_to '/ciders'
    else
      flash[:notice] = @cider.errors.full_messages.join(" ")
      render :new
    end
  end

  protected
  def cider_params
    params.require(:cider).permit(:name, :brewery_name, :city, :state)
  end
end
