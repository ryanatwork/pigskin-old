Pigskin::Application.routes.draw do

  devise_for :users

  resources :picks

  root :to => 'home#index'

end
