class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # post_imageモデルとのアソシエーション(関連づけ):「usersテーブル:post imagesテーブル=1:N」
  has_many :post_images, dependent: :destroy
  
end
