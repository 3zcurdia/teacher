class Articles::LikesController < ApplicationController
  before_action :set_article, only: %i[update destroy]

  def update
    @article.upsert_like(current_user, permitted_params)
    redirect_to @article
  end

  def destroy
    @article.likes.where(user: current_user).destroy_all
    redirect_to @article
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def permitted_params
    params.permit(:glyph)
  end
end
