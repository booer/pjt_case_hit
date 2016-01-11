class Product < ActiveRecord::Base
	has_many :finalimgs, :dependent => :destroy
	accepts_nested_attributes_for :finalimgs
end