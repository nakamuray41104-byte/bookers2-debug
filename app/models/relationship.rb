class Relationship < ApplicationRecord
  # フォローする側のユーザー
  belongs_to :follower, class_name: "User"
  # フォローされる側のユーザー
  belongs_to :followed, class_name: "User"
  
  # 同じユーザーを複数回フォローできないようにする
  validates :follower_id, uniqueness: { scope: :followed_id }
end
