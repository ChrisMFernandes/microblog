require 'sinatra'

require 'sinatra/activerecord'

set :database, 'sqlite3:microblog.sqlite3'

require_relative ('models/user')

require_relative ('models/profile')

require_relative ('models/posts')

enable :sessions

get '/' do
	erb :index
end

get '/signup' do
	erb :signup
end

post '/signup' do
	@user = User.create(name: params[:name], email: params[:email], password: params[:password])
	session[:id] = @user.id
	redirect '/profile'
end

get '/login' do
	erb :login
end

post '/login' do
	@user = User.find_by(name: params[:name], password: params[:password])
		if @user.password == params[:password]    
		  session[:id] = @user.id
		  redirect '/profile'
		else redirect '/failed'
	 end
end

get '/failed' do 
	erb :failed
end

get '/profile' do
	@user = User.find(session[:id])
	erb :profile
end

get '/logout' do
	session.clear
	redirect '/'
end 