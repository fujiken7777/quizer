class Quizzes::SearchesController < ApplicationController
  def index
    @quizzes = Quiz.search(params[:keyword])
  end
end
