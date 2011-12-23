require "omniauth-contrib/version"
require "omniauth"

module OmniAuth
  module Strategies
    autoload :VKontakte,  'omniauth/strategies/vkontakte'
    autoload :Google,  'omniauth/strategies/google'
  end
end

OmniAuth.config.add_camelization 'vkontakte', 'VKontakte'
