class AnswersController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.create!(answer_params)
    respond_to do |format|
      format.html { redirect_to question_path(@answer.question.id) }
      format.js
    end
  end

private
  def answer_params
    params.require(:answer).permit(:content, :user_id, :question_id)
  end
end
