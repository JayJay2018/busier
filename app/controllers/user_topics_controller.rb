class UserTopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @usertopics = UserTopic.all
    @usertopics.user = current_user
  end

  def new
    @usertopic = UserTopic.new
  end

  def create
    @usertopic = UserTopic.new(user_topic_params)
    @usertopic.user = current_user
    if @usertopic.save
      redirect_to root_path
    else
      render :create, notice: 'Sorry, but something went wrong.'
    end
  end

  private

  def user_topic_params
    params.require(:user_topic).permit(:name)
  end
end
