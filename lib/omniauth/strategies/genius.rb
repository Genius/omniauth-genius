require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Genius < OmniAuth::Strategies::OAuth2

      option :name, 'genius'

      option :client_options, {
        site: Rails.env.production? ? 'https://api.genius.com' : 'http://api.g.dev'
      }

      uid do
        raw_info['id']
      end

      info do
        {
          :id => raw_info['id'],
          :name => raw_info['name'],
          :login => raw_info['login'],
          :iq => raw_info['iq']
        }
      end

      extra do
        raw_info
      end

      def raw_info
        @raw_info ||= access_token.get('/account').parsed['response']['user']
      end

    end
  end
end
