class ProfessorSubjectsController < ApplicationController
  before_action :require_user,only: [:update_user_professor_subject_rating]

  def show
    @professor = Professor.find(params[:id])
    @subject = Subject.find(params[:subject_id])
    @professor_subject = ProfessorSubject.where(professor_id: @professor.id).find_by(subject_id: @subject.id)
    @comments = @professor_subject.comments
    if user_signed_in?
      @rating = ProfessorSubjectUser.where(user_id: current_user.id).find_by(professor_subject_id: @professor_subject.id)
    else
      @rating = false
    end
    #@comment = Comment.new(professor_subject_id: @professor_subject.id)
  end

  def update_user_professor_subject_rating
    @rating = ProfessorSubjectUser.where(user_id: current_user.id).find_or_create_by(professor_subject_id: params[:professor_subject_id])
    if params[:trabalhos]
      @rating.trabalhos = params[:trabalhos]
    end
    if params[:provas]
      @rating.provas = params[:provas]
    end
    if params[:tarefas]
      @rating.tarefas = params[:tarefas]
    end
    respond_to do |format|
      if @rating.save
        format.js
        format.html { flash[:success] = "Avaliação atualizada." }
      else
        format.html { flash[:danger] = "Avaliação não atualizada." }
      end
    end
  end

  def require_user
    if current_user.nil?
      flash[:danger] = "Autentique-se para avaliar."
      redirect_to new_user_session_path
    end
  end
end
