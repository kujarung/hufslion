Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # 코드 작성할때 주석 적절히 사용할것
  ## 첫 대문 
  root to: "home#index"
  get 'home/index'

  
  ## 로그인후 첫 페이지 
  get 'private/index'
  
  devise_for :users

  resources :notices
  resources :qnas do
    resources :qnareplies, only: [:new, :create, :destroy]
  end
  resources :inclasses
  resources :tips
  
  get '/posts/new/:type' => 'posts#new'
  post '/posts/new' => 'posts#create'
  post '/comments' => 'comments#create'
  delete '/comments/:id' => 'comments#destroy'
  # 파일 업로드
  post '/tinymce_assets' => 'tinymce_assets#create'
#여기 아래에 routes 코드 넣지 말것
  # get '/sorry' => 'home#sorry'
  # get '*path' => redirect('/sorry') 
end
