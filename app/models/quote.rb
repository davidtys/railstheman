class Quote < Article
  attr_accessor :author, :source

  validates :author, presence: true
  validates :source, presence: true  

    def init_from_article_header
      super
      @author = @article.header_params['author']
      @source = @article.header_params['source']
    end

    def get_header_params
      header_params = super
      header_params['author'] = @author if !@author.nil?
      header_params['source'] = @source if !@source.nil?
      header_params
    end

    def category
      'quote'
    end    
end