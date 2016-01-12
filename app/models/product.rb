class Product < ActiveRecord::Base
	mount_uploader :imagea, ImageUploader
	mount_uploader :imageb, ImageUploader
	mount_uploader :imagec, ImageUploader
	mount_uploader :imaged, ImageUploader

	has_many :finalimgs, :dependent => :destroy
	accepts_nested_attributes_for :finalimgs
end