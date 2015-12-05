class ArticlesController < ApplicationController
  before_action :require_user, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was created successfully."
      redirect_to article_path(@article)
    else
      render 'articles/new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = "Article was updated successfuly."
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:danger] = "Article has been destroyed."
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :link)
  end

end
