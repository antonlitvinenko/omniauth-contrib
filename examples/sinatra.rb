require 'rubygems'
require 'bundler'

Bundler.setup :default, :development, :example
require 'sinatra'
require 'omniauth'
require 'omniauth-contrib'

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end

get '/' do
  <<-HTML
  <ul>
    <li><a href='/auth/twitter'>Sign in with Twitter</a></li>
  </ul>
  HTML
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].inspect
end
