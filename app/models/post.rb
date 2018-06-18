class Post < ApplicationRecord
	validates :body, length: {maximum: 255}
	validates :used_id, presence: true

	belongs_to :user

end
