Rails.application.routes.draw do
  # deviseモデルを作成したことで下記のルーティンングが自動追加
  # deviseを使用する際にURLとしてusersを含むことを
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
