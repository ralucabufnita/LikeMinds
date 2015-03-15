LikeMinds::Application.routes.draw do

  devise_for :user, :controllers => { :omniauth_callbacks => 'omniauth_callbacks' }

  get 'ideas/forum', to: 'ideas#forum'

  post '/ideas/interest', to: 'ideas#interest'

  resources :ideas do
    resources :interests
  end

  root 'home#index'

end
