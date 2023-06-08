class PostsController < ApplicationController

    def index
        # Retrieve all posts from the database and order them by created_at timestamp in descending order
        @posts = Post.all.order("created_at DESC")
    end

    def new
        # Initialize a new instance of the Post model for creating a new post
        @post = Post.new
    end

    def create
        # Initialize a new instance of the Post model with the parameters submitted from the form
        @post = Post.new(post_params)

        if @post.save
            # If the post is successfully saved to the database, redirect to the index page
            redirect_to posts_path
        else
            # If there are validation errors, render the new view again with the error messages
            render 'new'
        end
    end

    def show
        # Find the post with the specified id and assign it to @post for displaying its details
        @post = Post.find(params[:id])
    end

    def update
        # Find the post with the specified id
        @post = Post.find(params[:id])

        if @post.update(post_params)
            # If the post is successfully updated with the submitted parameters, redirect to the show page for that post
            redirect_to @post
        else
            # If there are validation errors, render the edit view again with the error messages
            render 'edit'
        end
    end

    def edit
        # Find the post with the specified id and assign it to @post for editing
        @post = Post.find(params[:id])
    end

    def destroy
        # Find the post with the specified id and destroy it from the database
        @post = Post.find(params[:id])
        @post.destroy

        # Redirect to the index page after deleting the post
        redirect_to posts_path
    end

    private

    def post_params
        # Define the parameters that are allowed for the post, which helps prevent unauthorized access to sensitive attributes
        params.require(:post).permit(:title, :content)
    end
end
