 Rails.application.routes.draw do

  resources :labels, only: [:show]

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do

    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]

    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote

  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'faq' => 'welcome#faq'

  namespace :api do
    namespace :v1 do
      resources :posts, except: [:create, :new] do
        resources :comments, only: [:index, :show]
      end
    end
  end


  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update]
      resources :topics, only: [:index, :show] do
        resources :posts, only: [:new, :index, :show]
      end
    end
  end

end
