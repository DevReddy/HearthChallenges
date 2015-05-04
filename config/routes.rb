Rails.application.routes.draw do
  root 'static#index'
  get 'static/index'

  get 'login/reddit' => 'sessions#login'
  get 'auth/reddit' => 'sessions#auth'

  get 'challenges/all'

end