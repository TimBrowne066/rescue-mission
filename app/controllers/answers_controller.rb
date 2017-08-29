class AnswersController < ApplicationController


  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      flash[:notice] = "Answer saved successfully."
      redirect_to question_path(@question)
    else
      flash[:errors] = "Failed to save answer."
      redirect_to question_path(@question)
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:text)
  end
end
