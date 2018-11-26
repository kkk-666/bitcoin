Rails.application.routes.draw do
  devise_for :users
  #resources :coins
  #get 'coins/:id' => 'coins#show' # ~coins/list 引っかかる
  
  get '/' => 'home#top'
  get 'news' => 'home#news'
  get 'coins/list' => 'coins#list'
  get 'coins/post' => 'coins#post'
  get 'coins/new' => 'coins#new'
  get 'coins/:id' => 'coins#show'
  post 'coins/create'
  get 'coins/:id/edit' => 'coins#edit'
  patch 'coins/:id' => 'coins#update'
  root to: "home#top"
  
  
  # post/get controllerとActionを書く必要あり。
  # 'home/top' => home_contollerのtopアクションを呼び出し
end
