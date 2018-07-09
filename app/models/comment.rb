class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  scope :rating_desc, -> {order(rating: :desc)} 
  scope :rating_asce, -> {order(rating: :asce)}
end
