LikeMinds::Application.routes.draw do

  resources :user_details

  devise_for :users, :controllers => {:registrations => "users/registrations"}

  get 'ideas/forum', to: 'ideas#forum'
  get '/user_details/show/:user_id', to: "user_details#show", as: :dashboard

  post '/ideas/interest', to: 'ideas#interest'

  resources :ideas

   resources :ideas do
     resources :interests
   end
  
  root to: 'home#index'

end
