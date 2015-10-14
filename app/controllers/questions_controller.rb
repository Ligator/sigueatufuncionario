class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @questions = Question.order("created_at")
    respond_with(@questions)
  end

  def show
    respond_with(@question)
  end

  def new
    @question = Question.new
    respond_with(@question)
  end

  def edit
  end

  def create
    @question = Question.new(question_params)
    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_path, notice: 'Pregunta creada.' }
      else
        format.html { render :new }
      end
    end
    
  end

  def update
    @question.update(question_params)
    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_path, notice: 'Pregunta actualizada.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @question.destroy
    redirect_to questions_path, notice: 'Pregunta eliminada.'
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:question, :agency_target, :agency_description, :agency_programs, :agency_contact, :functionary_functions, :functionary_schooling, :functionary_experience, :functionary_salary, :functionary_contact)
    end
end
