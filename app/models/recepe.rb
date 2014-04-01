class Recepe < ActiveRecord::Base
	belongs_to :type
	attr_accessible :id, :type_id, :name, :description, :ingredients, :content_type, :picture, :uploaded_picture
	validates_format_of :content_type,with: /^image/,message: "--- можно выкладывать только изображения"


	def uploaded_picture=(picture_field)
		self.content_type = picture_field.content_type.chomp
		self.picture = picture_field.read
	end
end
