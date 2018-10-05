class TopicsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @topics = Topic.all
  end
end
