class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    @songs = Song.all
    erb :'songs/index'
  end
end

#   get '/songs' do
#     @songs = Song.all
#     erb :'songs/index'
#   end

#   get '/songs/new' do
#     erb :'/songs/new'
#   end

# post '/songs' do
#     @songs = Song.create(params[:song])
#     @songs.genre_ids = params[:genres]
#     @songs.artist = Artist.find_or_create_by(name: params[:artist][:name])
#     @songs.save
#     redirect to :'/songs/#{@song.slug}'
#   end

# get '/songs/:slug' do
#     @song = Song.find_by_slug(params[:slug])
#     erb :'/songs/show'
#   end

# get '/songs/:slug/edit' do
#     @song = Song.find_by_slug(params[:slug])
#     erb :'/songs/edit'
#   end

# patch '/songs/:slug' do
#     @song = Song.find_by_slug(params[:slug])
#     @song.update(params[:song])
#     @song.artist = Artist.find_or_create_by(name: params[:artist][:name])
#     @song.genre_ids = params[:genres]
#     @song.save
#     redirect to :'/songs/#{@song.slug}'
#   end

#   get '/genres' do
#     @genres = Genre.all
#     erb '/genres/index'
#   end

# get '/genres/:slug' do
#     @genre = Genre.find_by_slug(params[:slug])
#     erb :'/genres/show'
#   end

#   get '/artists' do
#     @artists = Artist.all 
#     erb :'/artists/index'
#   end

# get '/artists/:slug' do
#     @artist = Artist.find_by_slug(params[:slug])
#     erb :'/artists/show'
#   end
# end