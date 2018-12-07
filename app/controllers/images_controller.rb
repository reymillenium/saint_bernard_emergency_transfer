class ImagesController < ApplicationController


  # Muestra el listado de todas las Images creadas en la BD
  def index
    # Creo una variable y allí almaceno todas las Images en la BD
    @images = Image.all
  end


  # Muestra la vista new con el formulario para crear una nueva imagen
  def new
    # Creamos una instancia de tipo Image y se lo enviamos a la vista new
    @image = Image.new
  end


  # Almacena (crea) una nueva imagen en la BD a partir de los datos recibidos desde el formulario en la vista new
  def create
    # Imprime en pantalla en texto plano todos los datos de la Image que se reciben (para ver si se reciben tan solo)
    # render plain: params[:image].inspect

    # Creamos una variable de tipo Image y la rellenamos con los datos recibidos desde el formulario en image_params
    @image = Image.new image_params

    # Almacenamos la Image en la BD
    @image.save

    # Redireccionamos hacia el path de la imagen recién creada
    redirect_to @image
  end


  # Muestra la vista con los datos de una imagen
  def show
    # Buscamos la imagen en la BD y la almacenamos en una variable
    @image = Image.find params[:id]
  end


  # Muestra la vista con un formulario de edición con los datos de una imagen para ser modificada
  def edit
    # Buscamos la imagen que queremos editar en la BD y la almacenamos en una variable
    @image = Image.find params[:id]
  end


  # Se va a encargar de actualizar la información en la BD, de la Image que estamos enviando desde el formulario de edición en la vista edit
  def update
    # Buscamos la imagen original en la Bd a partir del ID que estamos enviando
    @image = Image.find params[:id]

    # Actualizamos la imagen hallada en la BD con los nuevos datos recibidos desde el formulario de edición en la vista edit
    @image.update image_params

    # Redireccionamos al usuario hacia el path de la imagen que acabamos de actualizar
    redirect_to @image
  end


  private

  def image_params
    # params.require(:image).permit(:description)
    params.require(:image).permit(:description, :likes_counter)
  end

end
