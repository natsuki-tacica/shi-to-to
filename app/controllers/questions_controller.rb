class QuestionsController < ApplicationController
  # before_action :find_question, only: :show

  # def show
  #   c = @survey.users.eager_load(:ansers).find_by uuid: session[:uuid]
  #   @anser = c.ansers.where(question_id: @question.id).first_or_initialize
  # end

  # private
  # def find_question
  #   @question = Question.joins(:surveys).includes(:surveys).find params[:id]
  #   @survey = @question.surveys
  # end

  before_action :set_group

  def index
    @group = Group.find(params[:group_id])
    # urlにgroup_id(params)がある場合
    if params[:group_id]
      # Groupのデータベースのテーブルから一致するidを取得
      @group = Group.find(params[:group_id])
      # group_idと紐づく投稿を取得
      @questions = @group.questions.page(params[:page]).per(20)
    else
      # 投稿すべてを取得
      @questions = Question.all
    end
    
    @anser = Anser.new

  end

  def new
    @anser = Anser.new
  end

  def show
    @questions = Question.page(params[:page]).per(20)
  end

  def create
    @anser = Anser.new
    Anser.create(anser_params)
    redirect_to questions_path
  end

  private
  def anser_params
    params.require(:anser).permit(:anser)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
