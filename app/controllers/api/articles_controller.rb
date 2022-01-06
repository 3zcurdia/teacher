# frozen_string_literal: true

module Api
  class ArticlesController < ApplicationController
    before_action :set_article, only: %i[show update destroy]

    def index
      @articles = Article.all
    end

    def show; end

    def create
      @article = Article.new(article_params)

      if @article.save
        render :show, status: :created
      else
        render json: @article.errors, status: :unprocessable_entity
      end
    end

    def update
      if @article.update(article_params)
        render :show, status: :ok
      else
        render json: @article.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content)
    end
  end
end
