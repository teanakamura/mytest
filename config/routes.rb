Rails.application.routes.draw do
  devise_for :userdata
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles
  resources :userdates

  root 'articles#index'
  get 'logintest' => 'userdates#login'
  #get 'master_articles' => 'articles#master'
  #post 'check_userdate' => 'userdates#check'

end
