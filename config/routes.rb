Rails.application.routes.draw do


  root 'tweets#new'
  resources :tweets

end
