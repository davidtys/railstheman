# RailsTheMan !

<a href='http://rubyonrails.org/'>Rails</a> editor for the <a href='http://middlemanapp.com/basics/blogging/'>middleman blog</a>

Let's face it : Middleman is great to make static sites, but having to write our articles in code can be a pain.

RailsTheMan gives you a rich editor to write your articles as you like.


![Alt demo](readme/railstheman-edit.jpg)


## Config

Define the path to your middleman application (not the blog in your applicaiton) in config/application.rb :

	config.path_application = 'yourpath'

You can also change the TinyMCE options in config/tinymce.yml


# Start it

You can use it in local with the rails dev server :

   rails s

It will list and create the articles in the path application of your middleman

## Timezone

please set the timezone in your middlemanblog config.rb :

   Time.zone = "Paris"

(you can read about it at http://middlemanapp.com/basics/blogging/)

and set the same timezone in railstheman config/application.rb :

   config.time_zone = 'Paris'

## Features

It uses <a href='http://www.tinymce.com/'>TinyMCE</a> as editor with the gem<a href='https://github.com/spohlenz/tinymce-rails'>tinymce-rails</a>, and <a href='https://github.com/joequery/Stupid-Table-Plugin'>Stupid jQuery Table Sort</a> to sort the articles table.

With my <a href='https://github.com/davidtysman/writetheman'>Writetheman</a> gem to manage and format the middleman files,

In the editor there are two options I really like : Format/Inline/Code and Tools/Source


## The Quote

I added a new type of article, the quote :

It uses the header parameters to add the author and source to an article.

To differentiate between the basic article and the quote, it adds 'category' in the header parameters :
it contains 'quote' or 'article' or nothing (your goold old article)


## Business projects

If you need a middleman editor for business, have a look to the Middleman paid extension : 
<a href='http://middleman-blog-editor.awardwinningfjords.com/'>Middleman Blog Editor</a>

## License

MIT, have fun

