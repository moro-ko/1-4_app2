class PostImage < ApplicationRecord

  has_one_attached :image

  # userモデルとのアソシエーション(関連づけ):「usersテーブル:post imagesテーブル=1:N」
  # (注意)post imageモデルに関連づけられるのは１つのuserモデルのため、単数形の「user」になる
  belongs_to :user

  def get_image
    unless image.attached?
      file_path = Rails.root.join("app/assets/images/no_image.jpg")
      image.attach(io: File.open(file_path), filename: "default-image.jpg", content_type: "image/jpeg")
    end
      image
  end
end
