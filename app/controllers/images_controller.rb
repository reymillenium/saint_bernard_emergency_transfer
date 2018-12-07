class ImagesController < ApplicationController

  # Estipulamos un callback para ejecutarse antes de cada acción en que lo necesitemos (show, edit, update and destroy)
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # ********************************************************************************************************************
  # *                                           *** C R E A T E ***                                                    *
  # ********************************************************************************************************************

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

    # Redireccionamos hacia el path de la imagen recién creada (lo cambiamos hacia el listado de imagenes)
    # redirect_to @image

    # Rendirizamos la vista view, pero obteniendo antes todas las variables que ella necesita (It works!)
    # @images = Image.all
    # render action: "index"

    # Redireccionamos hacia la accción index, la cual hace todas las cosas lo que la vista index necesita (It works!)
    # redirect_to action: "index"

    # Otra forma de redireccionar (It works too!
    redirect_to images_path
  end


  # ********************************************************************************************************************
  # *                                           *** R E N D E R ***                                                    *
  # ********************************************************************************************************************

  # Muestra el listado de todas las Images creadas en la BD
  def index
    # Creo una variable y allí almaceno todas las Images en la BD
    @images = Image.all
  end

  # Muestra la vista con los datos de una imagen
  def show
    # Buscamos la imagen en la BD y la almacenamos en una variable
    # @image = Image.find params[:id]
  end


  # ********************************************************************************************************************
  # *                                           *** U P D A T E ***                                                    *
  # ********************************************************************************************************************

  # Muestra la vista con un formulario de edición con los datos de una imagen para ser modificada
  def edit
    # Buscamos la imagen que queremos editar en la BD y la almacenamos en una variable
    # @image = Image.find params[:id]
  end

  # Se va a encargar de actualizar la información en la BD, de la Image que estamos enviando desde el formulario de edición en la vista edit
  def update
    # Buscamos la imagen original en la Bd a partir del ID que estamos recibiendo
    # @image = Image.find params[:id]

    # Actualizamos la imagen hallada en la BD con los nuevos datos recibidos desde el formulario de edición en la vista edit
    @image.update image_params

    # Redireccionamos al usuario hacia el path de la imagen que acabamos de actualizar (lo cambiamos hacia el listado de imagenes)
    # redirect_to @image

    # Redireccionamos hacia la accción index, la cual hace todas las cosas lo que la vista index necesita (It works!)
    # redirect_to action: "index"

    # Otra forma de redireccionar (It works too!)
    redirect_to images_path
  end


  # ********************************************************************************************************************
  # *                                          *** D E S T R O Y ***                                                   *
  # ********************************************************************************************************************

  # Se encarga de destruir o eliminar en la BD una image que estamos enviando
  def destroy
    # Buscamos la imagen original en la Bd a partir del ID que estamos recibiendo
    # @image = Image.find params[:id]

    # Destruimos la imagen en la BD
    @image.destroy

    # Redireccionamos hacia el listado de images (index)
    # redirect_to action: "index"

    # Otra forma de redireccionar (It works too!
    redirect_to images_path
  end

  private

  def image_params
    # params.require(:image).permit(:description)
    params.require(:image).permit(:description, :likes_counter)
  end

  # Implementamos el callback set_image, que se va a ejecutar antes de cada acción en que lo necesitemos (show, edit, update and destroy)
  def set_image
    # Buscamos la imagen original en la Bd a partir del ID que estamos recibiendo
    @image = Image.find params[:id]
  end

end
