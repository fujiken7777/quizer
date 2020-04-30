class GenreController < ApplicationController
  def genre
    @genre = Genre.find_by(id: params[:id])
    @quizzes = Quiz.includes(:user).where(genre_id: @genre[:id]).order("created_at DESC")
  end
end
