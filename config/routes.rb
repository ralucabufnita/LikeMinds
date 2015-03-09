LikeMinds::Application.routes.draw do

  devise_for :user, :controllers => { :omniauth_callbacks => 'omniauth_callbacks' }

  get 'ideas/forum', to: 'ideas#forum'

  resources :ideas

  root 'home#index'

end
