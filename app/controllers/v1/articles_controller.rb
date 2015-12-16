module V1
  class ArticlesController < ApplicationController
    expose(:article, attributes: :article_params)
    expose(:articles)

    def index
      respond_with articles
    end

    def create
      article.save
      respond_with article
    end

    def show
      respond_with article
    end

    private

    def article_params
      params.require(:article).permit(:title, :text)
    end
  end
end
