Treebook::Application.routes.draw do

resources :albums do
  resources :pictures
end

  resources :comments

  get "pages/home"

  
  devise_for :users

resources :users do
  member do
    get :follow
    get :unfollow
  end
end


 
  
  resources :statuses
  
  root 'statuses#index' 
  get 'home' => 'pages#home'
  get 'feed' => 'statuses#index'


end


 

  