class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(quiz_id: @quiz.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(quiz_id: @quiz.id)
    like.destroy
  end

  private

  def set_variables
    @quiz = Quiz.find(params[:quiz_id])
    @id_name = "#like-link-#{@quiz.id}"
  end

end
