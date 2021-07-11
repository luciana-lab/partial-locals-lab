class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    # @student = @classroom.oldest_student
  end

  def index
    # @classrooms = Classroom.all
  end

  private
  def classrom_params
    params.require(:classroom).permit(:name, :student_id, :search)
  end
end
