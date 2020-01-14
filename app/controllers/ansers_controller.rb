class AnsersController < ApplicationController
  before_action :set_group
  
  def index
    @anser = Anser.new
    @ansers = @group.ansers.includes(:user)

  end
  
  def show
  end

  
  def new
    @anser = Anser.new
  end


  def create
    @anser = @group.ansers.new(anser_params)
    redirect_to root_path
    # if @anser.save
    #   # respond_to do |format|
    #   #   format.html { redirect_to group_messages_path(@group), notice: 'メッセージが送信されました' }
    #   #   format.json
    #   end
    # else
    #   @ansers = @group.ansers.includes(:user)
    #   # flash.now[:alert] = 'メッセージを入力してください。'
    #   # render :index
    # end
  end

  private
  def anser_params
    params.require(:anser).permit(:anser)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end
end
