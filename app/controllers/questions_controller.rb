class QuestionsController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @questions = @group.questions.page(params[:page]).per(10)  
  end
  
end