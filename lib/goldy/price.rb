require 'json'
module Goldy
	class Price

		def self.today
			uri = URI.parse("https://www.quandl.com/api/v1/datasets/BUNDESBANK/BBK01_WT5511.json")
			response = Net::HTTP.get_response(uri)
			data = JSON.parse(response.body)
			price = data['data']
			today = price[0]
			return today[1]
		end
	end
end