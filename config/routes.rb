Rails.application.routes.draw do
  devise_for :users
  root to: 'quizzes#index'
  namespace :quizzes do
    resources :searches, only: :index
  end
  resources :quizzes
  resources :users, only: :show
  post   '/like/:quiz_id' => 'likes#like',   as: 'like'
  delete '/like/:quiz_id' => 'likes#unlike', as: 'unlike'
end
