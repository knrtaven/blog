class CommentsController < ApplicationController
    before_action :get_article

    def index
        @acomments = @article.comments
    end

    def new
        @comment = @article.comments.build
    end

    def create
        @comment = @article.comments.build(comment_params)
        if @comment.save 
            redirected_to article_comment_path
        else
            redner :new
        end
    end

    def show
        @comment = 
    end

    private

    def get_article
        @article = Article.find(params[:article_id])
    end

    def comment_params
        params.require(:comment).permit(:body, :article_id)
    end

end
