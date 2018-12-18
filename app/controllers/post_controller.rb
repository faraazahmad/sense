class PostController < ApplicationController
    def new
        @post = Post.new
    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    def show

    end

    def index
        @posts = Post.all
    end

    private

        def post_params
            params.require(:post).permit(:title, :url, :description, :tags)
        end
end
