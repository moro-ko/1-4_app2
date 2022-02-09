class PostImagesController < ApplicationController
  # 新規投稿フォーム
  def new
    @post_image = PostImage.new
  end
  
  # 投稿データの追加・保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def index
  end

  def show
  end
  
  
  # 投稿データのストロングパラメーター
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
