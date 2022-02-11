class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # アソシエーションを持っているモデル同士の記述方法↓
    # 特定のユーザー(@user)に関連づけられた投稿全て(.post_images)を取得し、@post_imagesに渡す
    @post_images = @user.post_images
  end

  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end