MultipleSocialAuth::Application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: "home#show"
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only:[:create, :destroy]
  resources :home, only: [:show]
  
  get 'welcome/home', to: 'welcome#home'
  get 'welcome/signout', to: 'welcome#signout'

  root to: "home#show"
end
