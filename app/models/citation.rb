class Citation < ApplicationRecord
	has_many :authors, :dependent => :destroy
	accepts_nested_attributes_for :authors
end
