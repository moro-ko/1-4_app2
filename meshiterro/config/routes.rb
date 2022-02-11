Rails.application.routes.draw do
  # homesコントローラー
  # deviseモデルを作成したことで下記のルーティンングが自動追加
  # deviseを使用する際にURLとしてusersを含むことを
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"

  # post_imagesコントローラー:resourcesを利用した書き方に編集
  # resourcesメソッド：ルーディングを一括して自動生成してくれる
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
      # post_commentsコントローラー:resources利用
      # post_commentsはpost_imagesに結びつく→親子関係となるため、do~endの間に記載する:「ネストする」という
    resources :post_comments, only: [:create, :destroy]
  end

  # useresコントローラー:resources利用
  resources :users, only: [:show, :edit, :update]




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
