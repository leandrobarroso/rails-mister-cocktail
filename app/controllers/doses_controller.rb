class DosesController < ApplicationController
  before_action :set_dose, only: %i[show edit update destroy]

  def index
    @doses = Dose.all
  end

  def show; end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to @dose, notice: 'Dose was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @dose.update(dose_params)
      redirect_to @dose, notice: 'Dose was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @dose.destroy
    redirect_to doses_url, notice: 'Dose was successfully destroyed.'
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end
end
