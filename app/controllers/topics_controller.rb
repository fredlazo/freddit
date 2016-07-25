class TopicsController < ApplicationController
<<<<<<< HEAD

  before_action :require_sign_in, except: [:index, :show]
  before_action :authorize_user, except: [:index, :show]

=======
>>>>>>> checkpoint34-A
  def index
    @topics = Topic.all
  end

<<<<<<< HEAD
=======
  def show
    @topic = Topic.find(params[:id])
  end

>>>>>>> checkpoint34-A
  def new
    @topic = Topic.new
  end

  def create
<<<<<<< HEAD
    @topic = Topic.new(topic_params)

    if @topic.save
      @topic.labels = Label.update_labels(params[:topic][:labels])
      flash[:notice] = "Saved"
=======
    @topic = Topic.new
    @topic.name = params[:topic][:name]
    @topic.description = params[:topic][:description]
    @topic.public = params[:topic][:public]

    if @topic.save
      flash[:notice] = "Success"
>>>>>>> checkpoint34-A
      redirect_to @topic
    else
      flash.now[:alert] = "Fail"
      render :new
    end
  end

<<<<<<< HEAD
  def show
    @topic = Topic.find(params[:id])
  end

=======
>>>>>>> checkpoint34-A
  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
<<<<<<< HEAD
    @topic.assign_attributes(topic_params)


    if @topic.save
      @topic.labels = Label.update_labels(params[:topic][:labels])
      flash[:notice] = "Saved"
=======
    @topic.name = params[:topic][:name]
    @topic.description = params[:topic][:description]
    @topic.public = params[:topic][:public]

    if @topic.save
      flash[:notice] = "Success"
>>>>>>> checkpoint34-A
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
<<<<<<< HEAD
      flash:now[:alert] = "Fail"
      render :show
    end

  end

private

  def topic_params
    params.require(:topic).permit(:name, :description, :public)
  end

  def authorize_user
    unless current_user.admin?
      flash[:alert] = "You must be an admin to do that."
      redirect_to topics_path
    end
=======
      flash.now[:alert] = "There was an error deleting the topic."
      render :show
    end
>>>>>>> checkpoint34-A
  end

end
