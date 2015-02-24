LikeMinds::Application.routes.draw do
  devise_for :users

  get 'ideas/forum', to: 'ideas#forum'

  resources :ideas

  root 'home#index'

end
