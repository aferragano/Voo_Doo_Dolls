get '/dolls' do
  @dolls = Doll.all
  erb :index
end

get '/dolls/new' do
  erb :create_doll
end

get '/dolls/:id' do
  @doll = Doll.find(params[:id])
end

post '/dolls' do
  @doll = Doll.create(name: params[:name], story: params[:story], user_id: session[:user_id])
  redirect "/"
end

delete '/doll/:id' do
  @doll = Doll.find(params[:id])
  @doll.destroy
  redirect '/'
end

put '/doll/:id/pin' do
	@doll = Doll.find(params[:id])
	pins = @doll.pins += 1
	@doll.update(pins: pins)
	{id: @doll.id, pins: @doll.pins}.to_json
end
