class ImagesController < ApplicationController

  # Muestra la vista new con el formulario para crear una nueva imagen
  def new

  end

  # Crea una nueva imagen en la BD a partir de los datos recibidos desde la vista new
  def create
    # render plain: params[:image].inspect

    @image = Image.new image_params
    @image.save

  end

  private

  def image_params
    params.require(:image).permit(:description)
  end

end
