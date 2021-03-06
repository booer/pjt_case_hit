# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :image_s do
    process :resize_to_limit => [50, 50]
  end
  version :post_s do
    process :resize_to_limit => [360, 360]
  end
  version :post_banner do
    process :resize_to_limit => [750, 285]
  end
  version :product_list_s do
    process :resize_to_limit => [350, 350]
  end
  version :info_banner do
    process :resize_to_limit => [750, 575]
  end  
  version :info_r do
    process :resize_to_limit => [263, 263]
  end
  version :page do
    process :resize_to_limit => [555, 340]
  end
  version :home_p do
    process :resize_to_limit => [261, 191]
  end

end