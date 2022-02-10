class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # アソシエーションを持っているモデル同士の記述方法↓
    # 特定のユーザー(@user)に関連づけられた投稿全て(.post_images)を取得し、@post_images
    @post_images = @user.post_images
  end

  def edit
  end
end
