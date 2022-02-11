class Favorite < ApplicationRecord

  bolongs_to :userd
  bolongs_to :post_image

end
