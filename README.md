# RailsTheMan !

<a href='http://rubyonrails.org/'>Rails</a> editor for the <a href='http://middlemanapp.com/basics/blogging/'>middleman blog</a>

Manage your articles in your browser.


## Usage

After you have copied this project, define the path to your middleman application (not the blog in your applicaiton) in config/application.rb :

	config.path_application = 'yourpath'


## Features

You can see the list of your articles and sort them, create a new one, show it and edit it.

It uses my <a href='https://github.com/davidtysman/writetheman'>Writetheman</a> gem to manage the middleman files, <a href='https://github.com/Nerian/bootstrap-wysihtml5-rails'>Wysihtml5</a> as editor and <a href='https://github.com/joequery/Stupid-Table-Plugin'>Stupid jQuery Table Sort</a> to sort the articles table.


## The Quote

I added a new type of article, the quote :

It uses the header parameters to add the author and source to an article.

To differentiate between the basic article and the quote, it adds 'category' in the header parameters :
it contains 'quote' or 'article' or nothing (your goold old article)


## The generated html

Please note that the Wysihtml5 editor is very light : for example it doesn't manage the paragraphs.

Perhaps I'll change it later, but it does the job for base font and insert, and it's all we really need, right ?


## Business projects

If you need a middleman editor for business, have a look to the Middleman paid extension : 
<a href='http://middleman-blog-editor.awardwinningfjords.com/'>Middleman Blog Editor</a>

## License

MIT, have fun

