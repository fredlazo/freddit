class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      flash[:notice] = "Saved"
      redirect_to @topic
    else
      flash.now[:alert] = "Fail"
      render :new
    end
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.assign_attributes(topic_params)


    if @topic.save
      flash[:notice] = "Saved"
      redirect_to @topic
    else
      flash.now[:alert] = "Fail"
      render :edit
    end
  end

  def destroy
    @topic = Topic.find(params[:id])

    if @topic.destroy
      flash[:notice] = "Deleted"
      redirect_to topics_path
    else
      flash:now[:alert] = "Fail"
      render :show
    end

  end

private

  def topic_params
    params.require(:topic).permit(:name, :description, :public)
  end

end
