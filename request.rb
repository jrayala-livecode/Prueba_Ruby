require 'uri'
require 'net/http'
require 'openssl'
require 'json'

def request(url, api_key)
    url = url +  "/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=" +api_key
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port) # http --> config de la petición
    request = Net::HTTP::Get.new(uri) # request --> petición
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    response = http.request(request)

    return JSON.parse(response.read_body)
end