class EvaluationsController < ApplicationController
  def index
  	@agency = Agency.find(params[:agency_id])
  	@functionary = @agency.functionary
  	@questions = Question.order("created_at")
    @evaluations = Evaluation.where(["functionary_id = ? and user_id = ? and created_at > ?", @functionary.id, current_user.id, Time.now.beginning_of_month])
    @evaluation_result = @evaluations.size == 0 ? 0.0 : @evaluations.sum(:evaluation).to_f / @evaluations.size.to_f

    @hash = {
      "agency_target"          => ["Objetivos/Funciones de la dependencia",     "@agency", "target"], 
      "agency_programs"        => ["Proyectos/Programas de la dependencia",     "@agency", "programs"],
      "agency_contact"         => ["Información de contacto de la dependencia", "@agency", "contact"],
      "functionary_functions"  => ["Metas del funcionario",                     "@functionary", "functions"],
      "functionary_schooling"  => ["Perfil académico del funcionario",          "@functionary", "schooling"],
      "functionary_experience" => ["Experiencia del funcionario",               "@functionary", "experience"],
      "functionary_salary"     => ["Salario del funcionario",                   "@functionary", "salary"],
      "functionary_contact"    => ["Info. de contacto del funcionario",         "@functionary", "contact"]
    }
  end

  def create
    params.permit!
    agency_id = params[:agency_id]
    params[:user_id] = current_user.id
    params.delete(:agency_id)
    params.delete(:utf8)
    params.delete(:authenticity_token)
    params.delete(:controller)
    params.delete(:action)
    @evaluations = Evaluation.where(["functionary_id = ? and user_id = ? and question_id = ? and created_at > ?", params[:functionary_id], params[:user_id], params[:question_id], Time.now.beginning_of_month])
    if @evaluations.blank? 
      @evaluation = Evaluation.new(params)
      @evaluation.save
    else
      @evaluation = @evaluations.first
      @evaluation.evaluation = params[:evaluation]
      @evaluation.save
    end
    redirect_to evaluations_path(agency_id: agency_id, star: params[:evaluation])
  end
end
