class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order(:created_at)
  end

  def show
    @article = Article.find(params[:id])
  end

  def master
    @articles = Article.all.order(:created_at)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to master_articles_path
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :body))
    if @article.save
      redirect_to master_articles_path
    else
      #render plain: @post.errors.inspect
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :body))
      redirect_to master_articles_path
    else
      render 'edit'
    end
  end

end
