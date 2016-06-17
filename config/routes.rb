Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do

    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

end
