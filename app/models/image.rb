class Image < ApplicationRecord

  # Unimos la configuración del picture_uploader (fichero de config para la gema carrierwave con el modelo Image)
  # Con esto ya se crea la relación en nuestra imagen con nuestro archivo picture_uploader que generamos gracias a la gema carrierwave

  # mount_uploader :picture, PictureUploader

end
