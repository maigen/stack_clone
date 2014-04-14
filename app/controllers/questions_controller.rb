class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create!(question_params)
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:content, :user_id)
  end
end
