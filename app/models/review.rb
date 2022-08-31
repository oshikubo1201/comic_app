class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :review, presence: true
  validates :item , presence: true
  validates :user , presence: true
  validates :score , presence: true

end
