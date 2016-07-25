Rails.application.routes.draw do

<<<<<<< HEAD
  resources :labels, only: [:show]

  root 'welcome#index'

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  get 'welcome/faq' => 'welcome#faq'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
=======
  resources :topics do
    resources :posts, except: [:index]
  end
>>>>>>> checkpoint34-A

  root 'welcome#index'

  get 'about' => 'welcome#about'
  get 'faq' => 'welcome#faq'

end
