class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path, notice: "Question Saved!"
    else
      render root_path, notice: "Please check your entry and try again."
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
