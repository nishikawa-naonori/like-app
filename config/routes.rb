Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :posts do 
    resources :likes, only: [:create, :destroy]
  end
  
  post 'like/:id' => 'likes#create', as: 'create_like'

  # 以下の1行を追記
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end