class RequestsController < ApplicationController

  def new
  	@request = Request.new
  end

  def create
  	@request = Request.new
  	sabun = (@request.start_on - Date.today).to_i
  	unless sabun >= 1
  	  flash[:error] = "開始日は明日以降でお願いします"
      redirect_to new_request_path
  	  return
  	end

  	sabun = (@request.end_on - @request.start_on).to_i
  	unless sabun <= 30
  	  flash[:error] = "期間は最長30日間まで"
  	  redirect_to new_request_path
  	  return
  	end
  	unless sabun >= 0
  	  flash[:error] = "終了日は開始日以降です"
      redirect_to new_request_path
  	  return
  	end
  end

  def confirm
  end

  private
  def request_params
    params.require(:request).permit(:user_id, :request_title, :question_box, :answer_box_type, :start_on, :end_on)
  end
end
