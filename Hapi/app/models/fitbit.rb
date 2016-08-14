class Fitbit < ApplicationRecord
	def send_api_request
		@response = HTTParty.get('https://api.fitbit.com/1/user/-/profile.json')
	end
end
