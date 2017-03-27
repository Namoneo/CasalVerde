class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :small do
    eager
    resize_to_fit(426, 300)
    cloudinary_transformation :quality => 80
  end

  version :large do
    eager
    resize_to_fit(600, 800)
    cloudinary_transformation :quality => 80
  end
end
