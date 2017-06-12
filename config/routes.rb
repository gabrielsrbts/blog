Rails.application.routes.draw do

  #devise_for :users, skip: :registrations
  #resources :posts do
  #	resources :comments
  #end

  #root 'posts#index'

  #get '/about', to: 'pages#about'

if Rails.env.production?
  devise_for :users, :controllers => { :registrations => "registrations" }
    resources :posts do
      resources :comments
    end
else
  devise_for :users
    resources :posts do
      resources :comments
    end
end

  root 'posts#index'

  get '/about', to: 'pages#about'

end
