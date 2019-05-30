Rails.application.routes.draw do
  resources :oyuns
  namespace :on_taraf do
    get 'oyundetay/index'
    get 'anasayfa/index'
  end
  
  resources :faydalars
  get 'panel', to: "admin#index"
  
  
  devise_for :users
  
  root "on_taraf/anasayfa#index" #ana sayfa
end
