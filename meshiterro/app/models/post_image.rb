class PostImage < ApplicationRecord

  has_one_attached :image

  # userモデルとのアソシエーション(関連づけ):「usersテーブル:post imagesテーブル=1:N」
  # (注意)post imageモデルに関連づけられるのは１つのuserモデルのため、単数形の「user」になる
  belongs_to :user
  # post_commensモデルとのアソシエーション「post_images:post_commens=1:N」
  has_many :post_comments, dependent: :destroy
  # favoriteモデルとのアソシエーション「post_image:favorite=1:N」
  has_many :favorites, dependent: :destroy

  # バリデーションの設定
  validates :shop_name, presence: true
  validates :image, presence: true

  def get_image
    unless image.attached?
      file_path = Rails.root.join("app/assets/images/no_image.jpg")
      image.attach(io: File.open(file_path), filename: "default-image.jpg", content_type: "image/jpeg")
    end
      image
  end

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end
