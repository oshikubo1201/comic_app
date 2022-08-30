class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :comment, presence: true
  validates :item , presence: true
  validates :user , presence: true


  

end
