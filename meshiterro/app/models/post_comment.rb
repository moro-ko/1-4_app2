class PostComment < ApplicationRecord

  # userモデルとの関連づけ「users:pust_comment=1:N」
  belongs_to :user
  # post_imageモデルとの関連づけ「post_images:post_comment=1:N」
  belongs_to :post_images

end
