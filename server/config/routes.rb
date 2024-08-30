# config/routes.rb
Rails.application.routes.draw do
  resources :projects, only: [:index, :show] do
    resources :contributions, only: [:create]
    resources :comments, only: [:create, :index]
  end

  resources :categories, only: [:index]

 
  post 'login', to: 'authentication#login'
  post 'signup', to: 'authentication#signup'
  post '/send_sms', to: 'sms#send_sms'

end
