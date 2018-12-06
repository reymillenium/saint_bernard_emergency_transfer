class ImagesController < ApplicationController

  # Muestra la vista new con el formulario para crear una nueva imagen
  def new

  end

  # Almacena (crea) una nueva imagen en la BD a partir de los datos recibidos desde el formulario en la vista new
  def create
    # Imprime en pantalla en texto plano todos los datos de la Image que se reciben (para ver si se reciben tan solo)
    # render plain: params[:image].inspect

    # Creamos una variable de tipo Image y la rellenamos con los datos recibidos desde el formulario en image_params
    @image = Image.new image_params

    # Almacenamos la Image en la BD
    @image.save

  end

  private

  def image_params
    # params.require(:image).permit(:description)
    params.require(:image).permit(:description, :likes_counter)
  end

end
