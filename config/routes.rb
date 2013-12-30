Railstheman::Application.routes.draw do

  resources :articles, except: [:show, :edit, :destroy]
  get 'article/:filename' => 'articles#show', as: 'show_article'
  get 'article/edit/:filename' => 'articles#edit', as: 'edit_article'
  post 'article/edit' => 'articles#update', as: 'update_article'  

  resources :quotes, except: [:show, :edit, :destroy]
  get 'quote/:filename' => 'quotes#show', as: 'show_quote'
  get 'quote/edit/:filename' => 'quotes#edit', as: 'edit_quote'
  post 'quote/edit' => 'quotes#update', as: 'update_quote'  

  root to: 'articles#index'
end