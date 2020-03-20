class AnsersController < ApplicationController
  before_action :set_group
  
  def index
    @question = Question.find(params[:question_id])
    @ansers = @question.ansers.where(user_id: current_user.id)
    @questions = @ansers.question
  end

  def new
    @question = Question.find(params[:question_id])
    @ansers = @question.ansers.where(user_id: current_user.id)
  end

  def create
    @question = Question.find(params[:question_id])
    # @anser = Anser.new(text: params[:text], question_id: params[:question_id],user_id: current_user.id)
    # @anser.save
    # redirect_to("/groups/#{@group.id}/questions/#{@question.id}/ansers/new")
    @anser = Anser.create(text: params[:text], question_id: params[:question_id],user_id: current_user.id)
    respond_to do |format|
      format.html { redirect_to("/groups/#{@group.id}/questions/#{@question.id}/ansers/new") }
      format.json
    end
    @anser.save
  end
  
  private

  def set_group
    @group = Group.find(params[:group_id])
  end

end
