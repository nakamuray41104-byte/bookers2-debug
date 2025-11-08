class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  # ユーザーは1つの投稿に1つしかいいねできない
  validates :user_id, uniqueness: { scope: :book_id }
end
