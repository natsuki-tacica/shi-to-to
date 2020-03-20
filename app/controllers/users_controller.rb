class UsersController < ApplicationController

  def show
    # @user = User.find(params[:id])
    @nickname = current_user.name
    @ansers = current_user.ansers.select("question_id").distinct.order("created_at")
    @group =Question.find_by(params[:group_id])

  end
    
  # def login
  #   @user = User.find_by(email: params[:email],
  #                         password: params[:password])
  #   if @user
  #     flash[:notice] = "ログインしました"
  #     redirect_to("/groups/index")
  #   else
  #     redirect_to("/users/sign_in")
  #   end
  # end

  def edit

  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end

