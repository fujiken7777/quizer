class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :show, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @quizzes = Quiz.includes(:user).order("created_at DESC")
    # @q = Quiz.ransack(params[:q])
    # @quizzes = @q.result(distinct: true)
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      render :create
    else
      redirect_to new_quiz_path
    end
  end

  def destroy
    @quiz.destroy
  end

  def edit
  end

  def update
    @quiz.update(quiz_params)
  end

  def show
  end

  # def search
  #   @q = Quiz.search(search_params)
  #   @quizzes = @q.result(distinct: true)
  # end


  private
  def quiz_params
    params.require(:quiz).permit(:name, :image, :text, :answer_number, :choice1, :choice2, :choice3, :choice4, :genre_id).merge(user_id: current_user.id)
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  # def search_params
  #   params.require(:q).permit!
  # end
end
