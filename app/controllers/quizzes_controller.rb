class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
  end

  def create
    Quiz.create(quiz_params)
  end

  private
  def quiz_params
    params.require(:quiz).permit(:name, :image, :text)
  end
end
