class EvaluationsController < ApplicationController
  def index
  	@agency = Agency.find(params[:agency_id])
  	@functionary = @agency.functionary
  	@questions = Question.order("created_at")

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
end
