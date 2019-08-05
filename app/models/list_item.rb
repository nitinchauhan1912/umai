class ListItem < ApplicationRecord
  include Deletion

  belongs_to :list

  validates :name, presence: true
  validates :description, presence: true

  scope :active, -> { where("active=?", true)}
  scope :in_active, -> { where("active=?", false)}
end
