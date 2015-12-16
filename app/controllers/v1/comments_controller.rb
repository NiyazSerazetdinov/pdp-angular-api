module V1
  class CommentsController < ApplicationController
    expose(:article)
    expose(:comments, ancestor: :article)
    expose(:comment, attributes: :comment_params)

    def create
      comment.save
      respond_with comment
    end

    private

    def comment_params
      params.require(:comment).permit(:text)
    end
  end
end
