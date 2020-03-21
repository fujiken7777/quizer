Rails.application.routes.draw do
  root to: 'quizzes#index'
  resources :quizzes, only: [:index, :new, :create, :destroy]
end
