class QuotesController < ArticlesController

  def new
    @formQuote = Quote.new
    @url = quotes_path
    @submit = 'Create'
  end

  def edit
    @formQuote = Quote.new
    @formQuote.article = @article
    @url = update_quote_path
    @submit = 'Update'
  end  

  private

    def article_params
      params.require(:quote).permit(:title, :date, :header, :body, :oldfilename, :tags, :category, :author, :source)
    end

    def form_new
      Quote.new(article_params)
    end



end
