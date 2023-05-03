require 'sinatra/base'
require 'bundler/setup'

require 'sinatra/reloader' if Sinatra::Base.environment == :development

class App < Sinatra::Application

  def initialize(app = nil)
    super()
  end

  configure :development do
    register Sinatra::Reloader
    after_reload do
      puts 'Reloaded...'
    end
  end

  get '/game' do
    'Game'
  end

  get '/' do
    'Welcome'
  end
end
