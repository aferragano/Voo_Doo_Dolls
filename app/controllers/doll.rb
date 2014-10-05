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
  @doll = Doll.create(name: params[:name], story: params[:story])
  redirect "/"
end

delete '/doll/:id' do
  @doll = Doll.find(params[:id])
  @doll.destroy
  redirect '/'
end
