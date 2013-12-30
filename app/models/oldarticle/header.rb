module Article
  class Header < Base

    attr_accessor :tags, :category

    private

      def init_article
        super
        header_params = {}
        header_params['tags'] = @tags if !@tags.nil?
        @category = 'article' if @category.nil?
        header_params['category'] = @category 
        @article.header_params = header_params
      end

  end
end