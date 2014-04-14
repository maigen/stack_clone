class VotesController < ApplicationController
  def create
    @vote = Vote.create(vote_params)
    redirect_to question_path(@vote.answer.question)
  end


private
  def vote_params
    params.require(:vote).permit(:answer_id, :value)
  end
end
