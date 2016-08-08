require 'mediawiki_api'
module SlackMediawiki
  module Util
    module MediawikiClientResponse
      def send_fields(titlewiki, contentwiki)
        client2 = MediawikiApi::Client.new "http://139.59.209.199/api.php"
        client2.log_in "ardian", "ardianardian"
        response = client2.create_page titlewiki, contentwiki
        return pageid =  response.data["pageid"]
    end
  end
end

