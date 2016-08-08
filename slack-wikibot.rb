require 'slack-ruby-bot'
require 'slack-wikibot/commands/wiki'
require 'slack-wikibot/bot'
require 'mediawiki_api'
client2 = MediawikiApi::Client.new "http://139.59.209.199/api.php"
client2.log_in "ardian", "ardianardian"