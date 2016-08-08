require 'mediawiki_api'
module MediaWiki
  module Util
    module Config
    client2 = MediawikiApi::Client.new "http://139.59.209.199/api.php"
    client2.log_in "ardian", "ardianardian"
    end
  end
end

