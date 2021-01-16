class Post < ApplicationRecord



	has_many :comments
	validates :title, presence: true, length:{minimum: 5}
	has_one_attached :image




	def photo
		if image.attached?
			image
		else
			'/undefind.png'
		end
	end


end
