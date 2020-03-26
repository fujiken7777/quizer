class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @quizzes = Quiz.includes(:user)
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quizzes = Quiz.create(quiz_params)
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
    params.require(:quiz).permit(:name, :image, :text, :answer_number, :choice1, :choice2, :choice3, :choice4).merge(user_id: current_user.id)
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
