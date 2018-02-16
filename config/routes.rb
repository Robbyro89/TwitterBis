Rails.application.routes.draw do


  root 'tweets#index'

   get 'tweets/new'
  resources :tweets

end
