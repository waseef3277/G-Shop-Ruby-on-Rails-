class Product < ApplicationRecord
	belongs_to :category
	validates :name, presence: true, length: {minimum: 3}
	validates :description, presence: true, length: {minimum: 20}
	validates :brand, presence: true
	validates :price, presence: true
	mount_uploaders :images, ImageUploader
  	serialize :images, JSON

end
