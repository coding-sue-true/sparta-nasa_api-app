class ApiNeosController < Sinatra::Base

  get '/api/neos' do
    @posts = HTTP.get("https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key=DEMO_KEY").body
  end

  # get '/' do
  #   @posts = HTTP.get("https://api.nasa.gov/planetary/apod?api_key=FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR").body
  #   erb :'neos/home'
  # end

  get '/api/posts' do
    @posts = Neo.all
    content_type :json
    postsArray = []
    @posts.each do |post|
      postHash = {
        "id" => post.id,
        "title" => post.title,
        "body" => post.body
      }
      postsArray.push(postHash)
    end
    postsArray.to_json
  end

  get '/api/posts/:id' do
    id = params[:id].to_i
    post = Neo.apiFind(id)
    content_type :json
    post.to_json
  end

  post '/api/posts' do
    data = JSON.parse( request.body.read.to_s )
    new_post = {
      title: data['title'],
      body: data['body']
    }
    post = Neo.api_create(new_post)
    content_type :json
    new_post.to_json
  end

  put '/api/posts/:id'  do
    data = JSON.parse( request.body.read.to_s )
    updated_post = {
      id: params['id'],
      title: data['title'],
      body: data['body']
    }
    post = Neo.api_update(updated_post)
    content_type :json
    updated_post.to_json
  end

  delete '/api/posts/:id'  do
    id = params[:id].to_i
    Neo.destroy(id)
    "Post id:#{id} was deleted"
  end
end
