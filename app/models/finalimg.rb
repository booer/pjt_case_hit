class Finalimg < ActiveRecord::Base
	mount_uploader :imga, ImageUploader
	mount_uploader :imgb, ImageUploader
	mount_uploader :imgc, ImageUploader
	mount_uploader :imgd, ImageUploader

	belongs_to :product
end