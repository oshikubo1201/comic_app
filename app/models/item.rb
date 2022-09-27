class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre_1
  belongs_to :genre_2
  belongs_to :genre_3


  validates :items_name, presence: true
  validates :publisher, presence: true
  validates :recommendation, presence: true
  validates :image     , presence: true
  validates :genre_1_id, numericality: {other_than: 1, message: "can't be blank"}


  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy



  def avg_score
    unless self.reviews.empty?
       reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end
  def review_score_percentage
    unless self.reviews.empty?
       reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end
