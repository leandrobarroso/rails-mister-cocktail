class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show destroy]

  def index
    if params[:query].present?
      @cocktails = Cocktail.where('name ILIKE ?', "%#{params[:query]}%")
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @doses = @cocktail.doses
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.'
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end
end
