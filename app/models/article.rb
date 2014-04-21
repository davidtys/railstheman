class Article  
  include ActiveModel::Model

  attr_accessor :title, :date, :header, :body
  attr_accessor :tags, :category
  attr_accessor :oldfilename
  attr_reader :article

  validates :title, presence: true
  validates :body, presence: true

  def article_new
    Writetheman::Article::Base.new(Railstheman::Application.config.path_application)
  end

  def article=(article)
    @article = article
    init_from_article
  end

  def create
    init
    @article.create
    @article
  end

  def update
    init
    @article.update(@oldfilename)
    @article
  end    

  private

    def init_from_article
      @title = @article.title
      @date = @article.date
      @header = @article.header
      @body = @article.body
      init_from_article_header if !@article.header_params.nil?        
      @oldfilename = @article.filename
     end

    def init_from_article_header
      @tags = @article.header_params['tags']
      @category = @article.header_params['category']
    end

    def init      
      # don't take hour to avoid problems in timezone
      @date = DateTime.now.to_date if @date.nil?
      @article = article_new
      @article.title = @title
      @article.date = @date
      @article.header = @header
      @article.body = body_html_encoded
      @article.header_params = get_header_params
    end

    def get_header_params
      header_params = {}
      header_params['tags'] = @tags if !@tags.nil?
      @category = category if @category.nil?
      header_params['category'] = @category 
      header_params
    end

    def category
      'article'
    end

    def body_html_encoded
      HTMLEntities.new().encode(@body, :named).gsub(/&lt;/, '<').gsub(/&gt;/, '>')
        .gsub(/&amp;nbsp;/, ' ').gsub(/&quot;/, "'")
    end
end