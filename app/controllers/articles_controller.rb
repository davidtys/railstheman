class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit]
  before_action :create_article, only: [:create, :create_quote]
  before_action :update_article, only: [:update, :update_quote]

  def index
    blog = Writetheman::Blog.new(Railstheman::Application.config.path_application)
    @articles = blog.list_articles    
  end

  def new
    @formArticle = Article.new
    @url = articles_path
    @submit = 'Create'
  end

  def create
    redirect_to_article
  end

  def edit
    @formArticle = Article.new
    @formArticle.article = @article
    @url = update_article_path
    @submit = 'Update'
  end

  def update
    redirect_to_article
  end

  def show
  end

 private

    def article_params
      params.require(:article).permit(:title, :date, :header, :body, :oldfilename, :tags, :category)
    end

    def form_new
      Article.new(article_params)
    end

    def set_article
      @article = Writetheman::Article::Base.new(Railstheman::Application.config.path_application)
      @article.load_from_file(params[:filename])
    end

    def create_article
      @formArticle = form_new
      @article = @formArticle.create
    end

    def update_article
      @formArticle = form_new
      @article = @formArticle.update
=begin
      @article = Writetheman::Article::Base.new(Railstheman::Application.config.path_application)
      @article.update_from_params(params['oldfilename'], article_params)
=end      
    end    

    def redirect_to_article
     redirect_to get_article_show_path(@article)
    end

end
