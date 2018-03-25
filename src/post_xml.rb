# post_xml.rb
# Ruby HTTP POST request containing XML content
# https://gist.github.com/mattriley/1679326
#
require 'net/http'

def post_xml url_string, xml_string
  uri = URI.parse url_string
  request = Net::HTTP::Post.new uri.path
  request.body = xml_string
  request.content_type = 'text/xml'
  response = Net::HTTP.new(uri.host, uri.port).start { |http| http.request request }
  response.body
end

