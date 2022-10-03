class PostsController < ApplicationController
    #before_action :user_authorized
    # skip_before_filter :verify_authenticity_token, :only => :create
    # skip_before_action :verify_authenticity_token
    # protect_from_forgery prepend: true, with: :exception
    
    def index
        @posts = Post.all
        # @user = current_user
        # render html: "Hello my ROR world!"
        # render json: Post.all
    end

    def new
        @post = Post.new
    end

    def create
        puts post_params
       
        @post = Post.new(post_params)
        @post.user_id = 2
        # debugger 
        if @post.save
            flash[:notice] = "Blog added."
            # redirect_to root_url, success: 'Blog added.'   
            redirect_to root_path
        else
            flash[:error] = "Failed to add blog."
            render :new
        end
    end

    def show
        @post = Post.find(params[:id])
        @user = User.find(@post.user_id)
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.user_id = 2
        if @post.update_attributes(post_params)
            flash[:notice] = "Post updated."
        else
            flash[:error] = "Error in update in post."
            render :edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.delete
            flash[:notice] = "Post deleted."
            redirect_to root_path
        else
            flash[:error] = "Error in delete post."
            render :destroy
        end
    end

    def user_authorized
        render json:{message: "You are not authorised."} if false
    end

    private
    def post_params
        # @user = current_user
        # params[:user_id] = @user.id
        # @post.user_id = 1
        # params.require(:post).permit(:post_title, :post_date, :post_description, :user_id, :slug, :is_published)
        params.require(:post).permit(:post_title, :post_date, :post_description, :slug, :is_published)
    end
end