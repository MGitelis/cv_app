class Citation < ApplicationRecord
	has_and_belongs_to_many :authors

	validates :title, presence: true,
								length: {minimum:3}
end
