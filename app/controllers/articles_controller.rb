require 'sinatra'
require 'sinatra/reloader' if development?

class ArticlesController < Sinatra::Base

  # Sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Enables the reloader so we dont need to keep restarting the server
  configure :development do
      register Sinatra::Reloader
  end


  get '/articles' do

    # Page title
    @title = "NASA"

    # Get all the articles from our model Article. `all` is a Class method which we can call if use the class first. This is not tied to an instance but we can just use the method
    @articles = Article.all

    # render our articles page
    erb :'articles/articles'

  end

  # A get request to /new will respond with a template with our new form that the user can complete to add a new article
  get '/articles/new'  do

    @title = "NASA"

    # Create a new instance of our Article object which will be empty but will allow our form partial to switch between a new and edit request
    @article = Article.new

    # Render the new article template
    erb :'articles/new'

  end

  # A get request to /articles/:id will respond with a the show template with the requested article
  get '/articles/:id' do
    @title = "NASA"

    # Get the ID from the params and turn it in to an integer
    id = params[:id].to_i

    # Use the find Class method in article to retrieve the article we need and assign it to an instance variable article
    @article = Article.find(id)

    # Render the show template
    erb :'articles/show'

  end

  # A article request to /articles/ will create a new article with the imformation the user entered which is stored in the params
  post '/articles/' do
    
    # Create a new instance of our Article class
    article = Article.new

    # Because we set the title and body in the models attr_accessor we can edit them from outside the object. Here we are setting the values of the title and body to be the information the user put in the form
    article.title = params[:title]
    article.body = params[:body]
    article.image = params[:image]

    # Save is a instance method that we can use to save the new Article into the db
    article.save

    # After the save we request the /articles route and display all the articles
    redirect "/articles"
  end


  # A put request to the /articles/:id will will update an existing article
  put '/articles/:id'  do

    # The id of the article we want to update, we pulled this information from request params
    id = params[:id].to_i

    # We use the find Class method to get us the article we need to update
    article = Article.find(id)

    # Manipulate the the intance variables to the new data the user entered
    article.id = params[:id]
    article.title = params[:title]
    article.body = params[:body]
    article.image = params[:image]

    # Use the instance method save to update the article
    article.save

    # Redirect to / to show all the articles
    redirect '/articles'

  end

  # A delete request to /articles/:id will delete the specified article from the db
  delete '/articles/:id'  do

    # The id of the article we want to delete, we pulled this information from request params
    id = params[:id].to_i

    # We can use the Class method destroy to remove the article from the db
    Article.destroy(id)

    # Redirect to / to show all the articles
    redirect "/articles"

  end

  # A request to /articles/:id/edit will respond with a the edit template with the article data of the article we can want to update
  get '/articles/:id/edit'  do

    # The id of the article we want to update, we pulled this information from request params
    id = params[:id].to_i

    # Use the find Class method in article to retrieve the article we need and assign it to an instance variable article
    @article = Article.find(id)

    # Render the edit template
    erb :'articles/edit'

  end
end
