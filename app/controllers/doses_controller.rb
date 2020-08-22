class DosesController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.create(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail, anchor: "dose-#{@dose.id}")
    else
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    @cocktail = @dose.cocktail
    redirect_to cocktail_url(@cocktail, anchor: "add-ingredient")
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
