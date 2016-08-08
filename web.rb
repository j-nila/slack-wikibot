require 'sinatra/base'

module SlackWikibot
  class Web < Sinatra::Base
    get '/' do
      'Bot is running...'
    end
  end
end
