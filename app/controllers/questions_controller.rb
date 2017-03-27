class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
     if @question.save
       QuestionMailer.new_question(@question).deliver_now
       @question.destroy
       redirect_to root_path, notice: "Question succesfully submitted"
     end
  end

  private

  def question_params
    params.require(:question).permit(:name, :email, :question)
  end
end
