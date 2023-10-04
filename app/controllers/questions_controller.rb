class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new 
  end

  def create
    Question.create(question_params)
    redirect_to '/'
    # redirect_to action: :index
  end

  private
  def question_params
    params.require(:question).permit(:title, :question_content, :question_person)
  end
end


