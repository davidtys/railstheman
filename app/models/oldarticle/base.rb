module Article
  class Base
    include ActiveModel::Model

    attr_accessor :title, :date, :header, :body, :oldfilename

    def article
      @article = Writetheman::Article::Base.new(Railstheman::Application.config.path_application)
    end

    def create_article
      init_article
      @article.create
      @article
    end

    def update_article
      init_article
      @article.update(@oldfilename)
      @article
    end    

    private

      def init_article
        @article.title = title
        @article.date = date
        @article.header = header
        @article.body = body
      end
  end
end