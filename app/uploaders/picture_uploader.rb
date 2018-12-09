class PictureUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # Esta configuración es bastante cómoda cuando estamos trabajando en la app de manera local
  storage :file
  #
  # Esta gema nos va a permitir o a facilitar conectarnos con servicios de terceros para almacenar archivos
  # Seevicio de terceros??
  # Normmlmente cuando tenemos una app no queremos que se nos sature sirviendo archivos sino q se sentre en su tarea principal: servir una app
  # Estas tareas como el almacenar archisos se delegan a servicios de terceros
  # Es lo más recomendable al pasar a producción nuestra app
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # Si por alguna razón si tenemos algún modelo sin una imagen podemos especificarle una imagen por default
  def default_url(*args)
    #   # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.jpg"].compact.join('_'))
    ActionController::Base.helpers.asset_path('default.jpg')
    # ActionController::Base.helpers.asset_path('default2.png')
    #
    #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end


  # Create differe  nt versions of your uploaded files (thumbnails):
  version :thumb do
    # process resize_to_fit: [50, 50]
    process resize_to_fill: [250, 250]
    # process :resize_to_fill => [250, 250]
  end

  version :medium do
    process resize_to_fill: [850, 850]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # Esto le especifica a carrierwave qué tipo de archivos queremos recibir en el moneto de estar eligiendo el tipo de archivo
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
end
