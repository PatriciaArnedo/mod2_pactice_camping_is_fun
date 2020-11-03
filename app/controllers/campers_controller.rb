class CampersController < ApplicationController
  
  
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.all.find(params[:id])
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.new(camper_params)
    if @camper.save
      redirect_to camper_path(@camper)
    else 
      flash[:errors] = @camper.errors.full_messages
      redirect_to new_camper_path
    end
  end

  def edit
    @camper = Camper.all.find(params[:id])
  end

  def update
    @camper = Camper.all.find(params[:id])
    if @camper.update(camper_params)
      redirect_to camper_path(@camper)
    else 
      flash[:errors] = @camper.errors.full_messages
      redirect_to edit_camper_path
    end
  end

  def destroy
    @camper = Camper.all.find(params[:id])
    @camper.destroy
    redirect_to campers_path
  end


  private

  def camper_params
    params.require(:camper).permit(:name, :age)
  end
end
