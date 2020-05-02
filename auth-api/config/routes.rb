Rails.application.routes.draw do
  post 'login/login'
  resources :users
  resources :memos
end
