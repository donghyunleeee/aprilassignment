class HomeController < ApplicationController

    def index
        @posts=Post.all
    end

    def new
    end
    
    def create
        @post=Post.new
        @post.title=params[:post_title]
        @post.content=params[:post_content]
        @post.save
        
        redirect_to "/index"
    end    
    
    def destroy
        @destroy_post=Post.find(params[:post_id])
        @destroy_post.destroy
        redirect_to "/index"
       
    end
    
    def edit
        @edit_post=Post.find(params[:post_id])
    end
    
    def update
        @update_post=Post.find(params[:post_id])
        @update_post.title=params[:post_title]
        @update_post.content=params[:post_content]
        @update_post.save
        
        redirect_to "/index"
    end
    
end
