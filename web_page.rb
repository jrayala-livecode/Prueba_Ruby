require_relative "request"
require "json"
require_relative 'components'
require_relative 'photos_count'

req = request("https://api.nasa.gov","yaO9wiwMJuTaxS5SzgX8aXt7XGN2Vdch1h4pW4au")
print(photos_count(req))


File.write('./index.html', build_web_page(req))
