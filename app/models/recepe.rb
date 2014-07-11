class Recepe < ActiveRecord::Base
	belongs_to :type
	attr_accessible :id, :type_id, :name, :description, :ingredients, :content_type, :picture, :uploaded_picture
	validates_presence_of :name


	def uploaded_picture=(picture_field)
		self.content_type = picture_field.content_type.chomp
		self.picture = picture_field.read
	end

	def pic
		return self.picture, type: self.content_type, disposition: "inline"
	end
end
