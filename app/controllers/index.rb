get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @tweet = $client.update(params[:tweet])
  @tweet.to_json
end
