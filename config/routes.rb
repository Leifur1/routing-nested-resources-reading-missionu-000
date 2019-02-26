Rails.application.routes.draw do
  get 'authors/:id/posts'
  get 'authors/:id/posts/:post_id'
  resources :authors, only: [:show]

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
