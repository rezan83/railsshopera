class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }
  belongs_to :user
  belongs_to :product, touch: true
  scope :rating_desc, -> {order(rating: :desc)} 
  scope :rating_asce, -> {order(rating: :asc)}
  scope :as_created, -> {order(created_at: :desc)}
end
