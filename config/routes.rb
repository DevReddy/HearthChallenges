Rails.application.routes.draw do
  get 'auth/reddit' => 'sessions/login'

  get 'challenges/all'

  root 'static#index'
  get 'static/index'

end