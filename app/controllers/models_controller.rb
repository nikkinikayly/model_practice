class ModelsController < ApplicationController
  def index
    @models = Models.all
  end

  def show
    @models = Model.find(params[:id])
  end

  def new
    @models = Model.new
  end

  def edit
    @models = Model.find(params[:id])
  end

  def update
    @models = Model.find(params[:id])
    if @models.update(page_params)
      redirect_to models_path
    else
      render :edit
    end
  end

  def destroy
    Model.find(params[:id]).destroy
    redirect_to models_path
  end

  private

  def models_params
    params.require(:models).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
  end
end
