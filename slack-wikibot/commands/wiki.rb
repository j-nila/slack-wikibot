require 'mediawiki_api'
module SlackWikibot
  module Commands
    class Wiki < SlackRubyBot::Commands::Base
      wiki_connection = MediawikiApi::Client.new "http://MediaWiki-URL/api.php"
      wiki_connection.log_in "username", "password"
      match(/^!wiki create (?<titlewiki>\w*)\s(?<contentwiki>.*)$/) do |client, data, match |
        response = wiki_connection.create_page match[: titlewiki], match[: contentwiki]
        pageid = response.data["pageid"]
        client.say(channel: data.channel, text: "Your wiki is created http://MediaWiki-URL?curid=#{pageid}")
      end
      match(/^!wiki delete (?<titlewiki>\w*)\s(?<reason>.*)$/) do |client, data, match |
        wiki_connection.delete_page match[: titlewiki], match[: reason]
        client.say(channel: data.channel, text: "Article #{match[:titlewiki]} page is deleted. Reason: #{match[:reason]}")
      end
    end
  end
end