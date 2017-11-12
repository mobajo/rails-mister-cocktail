class DosesController < ApplicationController
  add_breadcrumb "Home", :root_path
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    add_breadcrumb "#{@cocktail.name}", @cocktail
    add_breadcrumb "Add ingredient", :new_cocktail_dose_path
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private 

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
