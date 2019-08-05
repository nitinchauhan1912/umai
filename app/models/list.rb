class List < ApplicationRecord
	include Deletion

	has_many :list_items, dependent: :destroy

	validates :name, presence: true
	validates :description, presence: true


end
