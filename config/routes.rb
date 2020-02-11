Rails.application.routes.draw do

  
  devise_for :users,controllers:{
    :confirmations => 'users/confirmations',
  }
  root "items#index"
  resources :users, only: [:show, :new] do
    get :profile_edit
  end
    

  resources :signups, only: [:new, :create] do
    collection do
      get 'user1'
      post 'user2'
      post 'user3'
      get 'login'
    end
  end
end
