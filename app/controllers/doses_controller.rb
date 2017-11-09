class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    Dose.create(dose_params)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  private 

  def dose_params
    params.require(:task).permit(:description)
  end
end
