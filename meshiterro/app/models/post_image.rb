class PostImage < ApplicationRecord
  
  has_one_attached :image
  
  # userモデルとのアソシエーション(関連づけ):「usersテーブル:post imagesテーブル=1:N」
  # (注意)post imageモデルに関連づけられるのは１つのuserモデルのため、単数形の「user」になる
  belongs_to :user
  
end
