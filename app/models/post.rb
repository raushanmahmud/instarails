class Post < ApplicationRecord
	validates :body, length: {maximum: 255}
<<<<<<< HEAD
	validates :used_id, presence: true

	belongs_to :user

=======
	validates :user_id, presence: true
	belongs_to :user
>>>>>>> upstream1/master
end
