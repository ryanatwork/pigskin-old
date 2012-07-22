Pigskin::Application.routes.draw do

  resources :picks

  root :to => 'home#index'

end
