class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :show]
  
  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create
    Quiz.create(quiz_params)
  end

  def destroy
    quiz = Quiz.find(params[:id])
    quiz.destroy
  end

  def edit
  end

  def update
    quiz = Quiz.find(params[:id])
    quiz.update(quiz_params)
  end

  def show
  end

  private
  def quiz_params
    params.require(:quiz).permit(:name, :image, :text)
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end
end
