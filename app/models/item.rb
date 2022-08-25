class Item < ApplicationRecord

  validates :item_name, presence: true
  validates :publisher, presence: true
  validates :recommendation, presence: true
  validates :genre_1_id, presence: true

  belongs_to :user


end
