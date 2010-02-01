class User < ActiveRecord::Base
	
	has_many :images, :dependent => :destroy
	accepts_nested_attributes_for :images

	validates_presence_of :first_name, :last_name
	
	before_save :save_image
	
	def new_image_attributes=(image_attributes)
		image_attributes.each do |i|
			images.build(i)
		end
	end
	
	def save_image
		images.each { |i| i.save(false)}
	end
	
	
end
