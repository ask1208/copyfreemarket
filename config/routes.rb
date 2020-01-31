Rails.application.routes.draw do

  
  devise_for :users
  root "items#index"
 
    

  resources :signups, only: [:new, :create] do
    collection do
      get 'user1'
      post 'user2'
    end
  end
end
