class PostsController < ApplicationController
<<<<<<< HEAD

  before_action :require_sign_in, except: :show

  def show
    @post = Post.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
=======
  def index
    @posts = Post.all
  end

  def show
     @post = Post.find(params[:id])
  end

  def new
    @topic = Topic.new
>>>>>>> checkpoint34-A
    @post = Post.new
  end

  def create
<<<<<<< HEAD
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.build(post_params)
    @post.user = current_user

    if @post.save
      @post.labels = Label.update_labels(params[:post][:labels])
      flash[:notice] = "Post was successfully saved."
      redirect_to [@topic, @post]
    else
      flash.now[:alert] = "Fail."
=======
    @topic = Topic.find(params[:id])
    @post = Post.new
    @post.topic = @topic
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save
      flash[:notice] = "Post saved successfully"
      redirect_to [@topic, @post]
    else
      flash.now[:alert] = "There was an error.  Please try again."
>>>>>>> checkpoint34-A
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
<<<<<<< HEAD
    @post.assign_attributes(post_params)


    if @post.save
      @post.labels = Label.update_labels(params[:post][:labels])      
=======
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]

    if @post.save
>>>>>>> checkpoint34-A
      flash[:notice] = "Post was updated successfully."
      redirect_to [@post.topic, @post]
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :edit
    end
  end

<<<<<<< HEAD
   def destroy
     @post = Post.find(params[:id])

     if @post.destroy
       flash[:notice] = "\"#{@post.title}\" was deleted successfully."
       redirect_to @post.topic
     else
       flash.now[:alert] = "There was an error deleting the post."
       render :show
     end
   end

private

  def post_params
    params.require(:post).permit(:title,:body)
  end
=======
  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "\"#{@post.title}\" was deleted successfully."
      redirect_to @post.topic
    else
      flash.now[:alert] = "There was an error deleting the post."
      render :show
    end
  end



>>>>>>> checkpoint34-A

end
