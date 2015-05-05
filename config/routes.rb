Rails.application.routes.draw do
  root 'static#index'
  get 'static/index'

  get 'login/reddit' => 'sessions#login'
  get 'auth/reddit' => 'sessions#auth'
  get 'logout' => 'sessions#logout'

  get 'challenges/read'
  post 'challenges/create'
end