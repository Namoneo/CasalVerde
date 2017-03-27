class Photo < ApplicationRecord

  validates_presence_of :image, notice: "You must choose a photo."
  validates_presence_of :tag, notice: "You must choose a tag for your photo."

  mount_uploader :image, ImageUploader
end
