Rails.application.routes.draw do

  
  devise_for :users
  root "items#index"
 
    

  resources :signups, only: [:new, :create] do
    collection do
      get 'user1'
      get 'user2'
      get 'user3'
    end
  end
end
