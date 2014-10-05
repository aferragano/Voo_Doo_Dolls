get '/' do
  @dolls = Doll.all
	erb :index
end