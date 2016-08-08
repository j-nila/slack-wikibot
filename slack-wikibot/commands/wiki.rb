require 'mediawikiconf'
module SlackWikibot
  module Commands
    class Wiki < SlackRubyBot::Commands::Base
      match(/^!wiki create (?<titlewiki>\w*)\s(?<contentwiki>.*)$/) do |client, data, match|
        # match /^wiki create (?<location>\w*)\?$/ do |client, data, match|
        response = client2.create_page match[:titlewiki], match[:contentwiki]
        pageid =  response.data["pageid"]
        client.say(channel: data.channel, text: "Your wiki is created http://139.59.209.199/?curid=#{pageid}")
        end
      match(/^!wiki delete (?<titlewiki>\w*)\s(?<reason>.*)$/) do |client, data, match|
        client2.delete_page match[:titlewiki], match[:reason]
        client.say(channel: data.channel, text: "Article #{match[:titlewiki]} page is deleted")
      end

    end
  end
end
