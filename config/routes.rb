Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  get 'users_controller/index'
  get 'users_controller/new'
  get 'users_controller/show'
  get 'users_controller/edit'
  get 'welcome' => 'pages#home'
  get '/messages' => 'messages#index'
	get '/messages/new' => 'messages#new'	
  post 'messages' => 'messages#create'
  resources :user_bios
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
