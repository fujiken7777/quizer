Rails.application.routes.draw do
  root to: 'quizzes#index'
  resources :quizzes, only: :index
end
