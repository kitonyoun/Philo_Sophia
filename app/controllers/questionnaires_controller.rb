class QuestionnairesController < ApplicationController
  def top
    @requests = Request.all
  end

  def create
  end

  def confirm
  end

  private
  def questionnaire_params
    params.require(:questionnaire).permit(:request_id, :gender, :age)
  end

end
