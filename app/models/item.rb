class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :items_name, presence: true
  validates :publisher, presence: true
  validates :recommendation, presence: true
  validates :image     , presence: true
  validates :genre_1_id, numericality: {other_than: 1, message: "can't be blank"}


  belongs_to :user
  has_one_attached :image


end
