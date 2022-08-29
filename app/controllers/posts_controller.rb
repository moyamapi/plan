class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)

        if @post.save
            flash[:success] = "投稿を作成しました"
            redirect_to :posts
        else
            flash.now[:failure] = "投稿に失敗しました"
            render:new
        end

    end

    def show
        @post = Post.find(params[:id])
   
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            flash[:success] = "情報を更新しました"
            redirect_to post_path
        else
            flash.now[:failure] = "更新に失敗しました"
            render:edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        flash[:failure] = "スケジュールを削除しました"
        redirect_to :posts
    end

    def post_params
        params.require(:post).permit(
            :title,
            :start,
            :stop,
            :allday,
            :memo
            )
    end


end
