class ArticlesController < ApplicationController
  def index
    @articles = Post.all
  end

  def new

  end

  def create
    # articleモデルの属性の初期化
    @article = Post.new(article_params)

    # articleモデルをDBへ保存
    @article.save
    redirect_to '/articles'
    # showアクションにリダイレクト

  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
