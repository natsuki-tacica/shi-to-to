class GroupsController < ApplicationController

  def show
    @questions = Question.page(params[:page]).per(20)
  end

  def new
    @group =Group.find(params[:id])
    @anser = Anser.new
  end
end
