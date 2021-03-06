require './config/environment'

class ApplicationController < Sinatra::Base
  include Helper
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :session_secret, "secret"
    register Sinatra::Flash
    enable :sessions
  end

end
