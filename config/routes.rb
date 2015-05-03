Rails.application.routes.draw do
  get 'challenges/all'

  root 'static#index'
  get 'static/index'

end