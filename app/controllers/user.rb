enable :sessions

get '/session' do
  erb :login
end

post '/session' do
	@user = User.find_by(username: params[:user][:username]).try(:authenticate, params[:user][:username])
	session[:user_id] = @user.id
	redirect '/'
end

get '/logout' do
  session.clear
  redirect '/'
end