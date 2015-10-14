class EvaluationsController < ApplicationController
  def index
  	@agency = Agency.find(params[:agency_id])
  	@functionary = @agency.functionary
  	@questions = Question.order("created_at")

  	@agency_methods = %w[agency_target agency_programs agency_contact]
  	@agency_labels  = ["Objetivos/Funciones de la dependencia", "Proyectos/Programas de la dependencia", "Información de contacto de la dependencia"]

  	@functionary_methods = %w[functionary_functions functionary_schooling functionary_experience functionary_salary functionary_contact]
  	@functionary_labels  = ["Metas del funcionario", "Perfil académico del funcionario", "Experiencia del funcionario", "Salario del funcionario", "Info. de contacto del funcionario"]
  	
  	@agency_hash = {
  		"agency_target" => ["Objetivos/Funciones de la dependencia", "target"], 
  		"agency_programs" => ["Proyectos/Programas de la dependencia", "programs"],
  		"agency_contact" => ["Información de contacto de la dependencia", "contact"]
  	}
  	@functionary_hash = {
  		"functionary_functions" => ["Metas del funcionario", "functions"],
  		"functionary_schooling" => ["Perfil académico del funcionario", "schooling"],
  		"functionary_experience" => ["Experiencia del funcionario", "experience"],
  		"functionary_salary" => ["Salario del funcionario", "salary"],
  		"functionary_contact" => ["Info. de contacto del funcionario", "contact"]
  	}
    # @hash = @agency_hash + @functionary_hash
  end
end
