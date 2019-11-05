class Produit < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  validates :nom, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
