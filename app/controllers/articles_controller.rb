class ArticlesController < ApplicationController

  before_action :check_index

  def index
    @articles = Article.search(params[:q]).records.order(:title).limit(10)
  end

  private

  def check_index
    redirect_to '/500.html' unless Article.has_index?
  end

end
