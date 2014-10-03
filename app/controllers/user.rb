get '/session' do 
end

post '/session' do 
end

delete '/session' do
  session.clear
  redirect '/'
end