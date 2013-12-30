module ArticlesHelper

  def get_article_show_path(article)
    return show_quote_path(article.filemane_without_extension) if article_quote?(article)
    show_article_path(article.filemane_without_extension)
  end

  def get_article_edit_path(article)
    return edit_quote_path(article.filemane_without_extension) if article_quote?(article)
    edit_article_path(article.filemane_without_extension)
  end  

  def article_quote?(article)
    article.header_params.include?('category') && article.header_params['category'] == 'quote'
  end

end
