enable :sessions

get '/session' do
  erb :login
end

post '/session' do
	@user = User.authenticate(params[:user])
	session[:user_id] = @user.id
	redirect '/'
end

delete '/session' do
  session.clear
  redirect '/'
end