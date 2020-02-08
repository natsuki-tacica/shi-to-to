class AnsersController < ApplicationController
  before_action :set_group
  
  def index
    @anser = Anser.new
    @ansers = @question.ansers.includes(:user)
  end
  
  def new
    @anser = Anser.new
  end


  def create
    @anser = @question.ansers.new(anser_params)
    @ansers = @question.ansers.includes(:user)
    flash.now[:alert] = 'メッセージを入力してください。'
  end

  private
  def anser_params
    params.require(:anser).permit(:text).merge(user_id: current_user.id, question_id: params[:question_id])
  end

  def set_group
    @question = Question.find(params[:question_id])
  end

end
